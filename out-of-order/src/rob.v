/* Re-order Buffer
 * After dispatching, inst are stored in ROB
 * Executing - busy, done-excuting - free
 * Structure: cirlular buffer
 * each entry includes: pc, valid, busy, rename state (log/phy reg addr)
 * 
 */
module rob
#(
    parameter NUM_ENTRIES = 32
)
(
    // Inputs
    clk_i, reset_i, allocate_req_i, update_req_i, 
    // Outputs
    empty_o, full_o
);
    // Inputs
    input clk_i, reset_i;
    // Request indicators
    input allocate_req_i;
    input update_req_i;
    // Values (allocation)
    // Values (update)

    // Outputs
    // Indicating the status of the circular buffer
    output empty_o, full_o;
    // Output data at commitment

    // Using seperate reg arrays to decrease power comsumption, and make data accessing easier


endmodule

module cbuf
#(
    parameter WIDTH = 4,
    parameter DEPTH = 32,
    parameter ADDR_LEN = 5
)
(
    // Inputs
    clk_i, reset_i, push_en_i, reg_free_addr_i, pop_en_i,

    // Outputs
    empty_o, reg_allocate_addr_o
);
    // Inputs
    input clk_i, reset_i;
    // the registers that are freed
    input push_en_i;
    input [4:0] reg_free_addr_i;
    input pop_en_i;

    // Outputs
    output empty_o; // if free list is empty should not continue executing
    output [4:0] reg_allocate_addr_o;

    reg [4:0] valid_registers [0:31];
    reg [4:0] num_free_reg;
    reg [4:0] head;
    reg [4:0] tail;

    wire [4:0] head_plus_one;
    wire [4:0] tail_plus_one;

    assign empty_o = (num_free_reg == 0);
    assign reg_allocate_addr_o = valid_registers[tail];

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
                valid_registers[tail] <= reg_free_addr_i;
            end else if (pop_en_i) begin
                head <= head ^ (head >> 1);
            end
        end
    end

    //assign count_up = gray_count ^ (gray_count >> 1);
    //assign count_down = {~gray_count[4], gray_count[3:0]} ^ ({~gray_count[4], gray_count[3:0]} >> 1);

endmodule