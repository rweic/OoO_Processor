/* Re-order Buffer
 * After dispatching, inst are stored in ROB
 * Executing - busy, done-excuting - free
 * Structure: cirlular buffer
 * each entry includes: pc, valid, busy, rename state (log/phy reg addr)
 * This module should also include the part of commitment/ retirement
 */

module rob
#(
    parameter NUM_ENTRIES = 32
)
(
    // Inputs
    clk_i, reset_i, 
    allocate_req_i,
    update_req_alu_i, update_req_lsu_i, update_req_mul_i, 
    prd_addr_i, pc_i, inst_i,
    rob_idx_alu_i, reg_value_alu_i,
    rob_idx_lsu_i, reg_value_lsu_i,
    rob_idx_mul_i, reg_value_mul_i,
    // Outputs
    empty_o, full_o,
    rob_idx_o,
    commitment_valid_o, inst_committed_o, pc_committed_o, prd_addr_committed_o, prd_value_committed_o
);
    // Inputs
    input clk_i;
    input reset_i;
    // Request indicators
    input allocate_req_i;  // allocate request
    input update_req_alu_i;  // update request
    input update_req_lsu_i;  // update request
    input update_req_mul_i;  // update request
    // Values (allocation)
    input [4:0] prd_addr_i;
    input [31:0] pc_i;
    input [31:0] inst_i;
    // Values (update)
    input [4:0] rob_idx_alu_i;
    input [31:0] reg_value_alu_i;
    input [4:0] rob_idx_lsu_i;
    input [31:0] reg_value_lsu_i;
    input [4:0] rob_idx_mul_i;
    input [31:0] reg_value_mul_i;

    // Outputs
    // Indicating the status of the rob
    output empty_o;
    output full_o;
    // Allocated rob idx
    output [4:0] rob_idx_o;
    // Output data at commitment
    output reg commitment_valid_o;
    output reg [31:0] inst_committed_o;
    output reg [31:0] pc_committed_o;
    output reg [4:0]  prd_addr_committed_o;
    output reg [31:0] prd_value_committed_o;

    // Pointers
    reg [4:0] head;
    reg [4:0] tail;
    reg [4:0] fifo_cnt;

    // Need updates (valid & rd_value)
    reg [NUM_ENTRIES-1:0] valid;
    reg [31:0] reg_value [0:NUM_ENTRIES-1]; 

    /*wire [31:0] reg_rob_0 = reg_value[0];
    wire [31:0] reg_rob_1 = reg_value[1];
    wire [31:0] reg_rob_2 = reg_value[2];*/

    // Wires
    wire ready;
    wire [4:0] prd_addr_committed;
    wire [31:0] pc_committed;
    wire [31:0] inst_committed;

    assign ready = valid[head];
    assign rob_idx_o = tail;

    // Pointer Updates
    always @(posedge clk_i)
    begin
        if(reset_i) begin
            tail <= 0;
            head <= 0;
            commitment_valid_o <= 1'b0;
            pc_committed_o <= 'b0;
            inst_committed_o <= 'b0;
            prd_addr_committed_o <= 'b0;
            prd_value_committed_o <= 'b0;
        end
        else begin
            tail <= (allocate_req_i && !full_o) ? tail+1 : tail;
            head <= ready ? head+1 : head;
            commitment_valid_o <= ready;
            pc_committed_o <= pc_committed;
            inst_committed_o <= inst_committed;
            prd_addr_committed_o <= prd_addr_committed;
            prd_value_committed_o <= reg_value[head];
        end
    end

    
    assign empty_o = (fifo_cnt == 0);
    assign full_o = (fifo_cnt == NUM_ENTRIES);
    // counter block
    integer i;
    always @(posedge clk_i)
    begin
        if(reset_i) begin
            fifo_cnt <= 0;
        end
        else begin
            if ((allocate_req_i && !full_o) & ~(ready && !empty_o))
                fifo_cnt <= fifo_cnt+1;
            else if (~(allocate_req_i && !full_o) & (ready && !empty_o))
                fifo_cnt <= fifo_cnt-1;
        end
    end

    // Updating the valid & rd_value
    always @(posedge clk_i)
    begin
        if (reset_i) begin
            for (integer i = 0; i < NUM_ENTRIES; i = i + 1) begin
                valid[i] <= 1'b0;
                reg_value[i] <= 'b0;
            end
        end
        else begin
            if (update_req_alu_i) begin
                valid[rob_idx_alu_i] <= 1'b1;
                reg_value[rob_idx_alu_i] <= reg_value_alu_i;
            end else begin 
                valid[rob_idx_alu_i] <= valid[rob_idx_alu_i];
                reg_value[rob_idx_alu_i] <= reg_value[rob_idx_alu_i];
            end

            if (update_req_mul_i) begin
                valid[rob_idx_mul_i] <= 1'b1;
                reg_value[rob_idx_mul_i] <= reg_value_mul_i;
            end else begin 
                valid[rob_idx_mul_i] <= valid[rob_idx_mul_i];
                reg_value[rob_idx_mul_i] <= reg_value[rob_idx_mul_i];
            end

            if (update_req_lsu_i) begin
                valid[rob_idx_lsu_i] <= 1'b1;
                reg_value[rob_idx_lsu_i] <= reg_value_lsu_i;
            end else begin 
                valid[rob_idx_lsu_i] <= valid[rob_idx_lsu_i];
                reg_value[rob_idx_lsu_i] <= reg_value[rob_idx_lsu_i];
            end
        end
    end

    // Not updated
    fifo #(.WIDTH(5), .DEPTH(NUM_ENTRIES), .ADDR_LEN(5)) cbuf_prd (
        .clk_i(clk_i), .reset_i(reset_i), 
        .data_in_i(prd_addr_i), .wr_i(allocate_req_i), .rd_i(ready), 
        .data_out_o(prd_addr_committed), 
        .empty_o(), .full_o()
    );

    fifo #(.WIDTH(32), .DEPTH(NUM_ENTRIES), .ADDR_LEN(5)) cbuf_pc (
        .clk_i(clk_i), .reset_i(reset_i), 
        .data_in_i(pc_i), .wr_i(allocate_req_i), .rd_i(ready), 
        .data_out_o(pc_committed), 
        .empty_o(), .full_o()
    );

    fifo #(.WIDTH(32), .DEPTH(NUM_ENTRIES), .ADDR_LEN(5)) cbuf_inst (
        .clk_i(clk_i), .reset_i(reset_i), 
        .data_in_i(inst_i), .wr_i(allocate_req_i), .rd_i(ready), 
        .data_out_o(inst_committed), 
        .empty_o(), .full_o()
    );

endmodule


/*
module cbuf
#(
    parameter WIDTH = 4,
    parameter DEPTH = 32,
    parameter ADDR_LEN = 5
)
(
    // Inputs
    clk_i, reset_i, push_en_i, data_i, pop_en_i,

    // Outputs
    empty_o, data_o
);
    // Inputs
    input clk_i, reset_i;
    // the registers that are freed
    input push_en_i;
    input [4:0] data_i;
    input pop_en_i;

    // Outputs
    output empty_o; // if free list is empty should not continue executing
    output [4:0] data_o;

    reg [4:0] data [0:31];
    reg [4:0] num_free_reg;
    reg [4:0] head;
    reg [4:0] tail;

    wire [4:0] head_plus_one;
    wire [4:0] tail_plus_one;

    assign empty_o = (num_free_reg == 0);
    assign data_o = data[tail];

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin
            // all 
            for (i = 0; i < 31; i ++ ) begin
                data[i] <= 0;
            end
            num_free_reg <= 'b10000; // gray code 31
            head <= 'b00000; // gray code 0
            tail <= 'b10000; // gray code 31
        end 
        else begin
            if (push_en_i & !pop_en_i) 
                num_free_reg <= num_free_reg ^ (num_free_reg >> 1); // +1
            else if (!push_en_i & pop_en_i)
                num_free_reg <= {~num_free_reg[4], num_free_reg[3:0]} ^ ({~num_free_reg[4], num_free_reg[3:0]} >> 1); // -1

            if (push_en_i) begin // add reg to free list
                tail <= tail ^ (tail >> 1);
                data[tail] <= data_i;
            end else if (pop_en_i) begin
                head <= head ^ (head >> 1);
            end
        end
    end

    //assign count_up = gray_count ^ (gray_count >> 1);
    //assign count_down = {~gray_count[4], gray_count[3:0]} ^ ({~gray_count[4], gray_count[3:0]} >> 1);

endmodule*/