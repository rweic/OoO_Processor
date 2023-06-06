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
    allocate_req_i, update_req_i, 
    prd_addr_i, pc_i, inst_i,
    // Outputs
    empty_o, full_o,
    inst_committed_o, pc_o, prd_addr_o
);
    // Inputs
    input clk_i;
    input reset_i;
    // Request indicators
    input allocate_req_i;  // allocate request
    input update_req_i;  // update request
    // Values (allocation)
    input [4:0] prd_addr_i;
    input [31:0] pc_i;
    input [31:0] inst_i;

    // Values (update)
    input [31:0] pc_alu_i;
    input [31:0] reg_value_alu_i;


    // Outputs
    // Indicating the status of the circular buffer
    output empty_o;
    output full_o;
    // Output data at commitment
    output [31:0] inst_committed_o;
    output [31:0] pc_o;
    output [4:0] prd_addr_o;

    cbuf #(.WIDTH(1), .DEPTH(32), .ADDR_LEN(5)) cbuf_valid (
        .clk_i(clk_i), .reset_i(reset_i), .push_en_i(allocate_req_i), .data_i(1'b0), .pop_en_i(),
        .empty_o(), .data_o()
    );

    cbuf #(.WIDTH(1), .DEPTH(32), .ADDR_LEN(5)) cbuf_prd (
        .clk_i(clk_i), .reset_i(reset_i), .push_en_i(allocate_req_i), .data_i(), .pop_en_i(),
        .empty_o(), .data_o()
    );

    cbuf #(.WIDTH(32), .DEPTH(32), .ADDR_LEN(5)) cbuf_pc (
        .clk_i(clk_i), .reset_i(reset_i), .push_en_i(allocate_req_i), .data_i(), .pop_en_i(),
        .empty_o(), .data_o()
    );

    cbuf #(.WIDTH(32), .DEPTH(32), .ADDR_LEN(5)) cbuf_inst (
        .clk_i(clk_i), .reset_i(reset_i), .push_en_i(allocate_req_i), .data_i(), .pop_en_i(),
        .empty_o(), .data_o()
    );


endmodule

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

    reg [4:0] valid_registers [0:31];
    reg [4:0] num_free_reg;
    reg [4:0] head;
    reg [4:0] tail;

    wire [4:0] head_plus_one;
    wire [4:0] tail_plus_one;

    assign empty_o = (num_free_reg == 0);
    assign data_o = valid_registers[tail];

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin
            // all 
            for (i = 0; i < 31; i ++ ) begin
                valid_registers[i] <= i+1;
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
                valid_registers[tail] <= data_i;
            end else if (pop_en_i) begin
                head <= head ^ (head >> 1);
            end
        end
    end

    //assign count_up = gray_count ^ (gray_count >> 1);
    //assign count_down = {~gray_count[4], gray_count[3:0]} ^ ({~gray_count[4], gray_count[3:0]} >> 1);

endmodule