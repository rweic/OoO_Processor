/* Register Rename
 * The module was supposed to solve the name dependencies
 */

module rename (
    // Inputs
    clk_i, reset_i, pc_i, inst_valid_i, rs1_addr_i, rs2_addr_i, rd_addr_i, cdb_en_i, cdb_reg_addr_i,
    // Outputs
    prs1_addr_o, prs2_addr_o, prd_addr_o,
    prs1_valid_o, prs2_valid_o
);
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    // The register addr of inst being decoded
    input inst_valid_i;
    input [4:0] rs1_addr_i;
    input [4:0] rs2_addr_i;
    input [4:0] rd_addr_i;
    // Updates from common data bus
    input cdb_en_i;
    input [4:0] cdb_reg_addr_i;

    // Outputs
    output reg [4:0] prs1_addr_o;
    output reg [4:0] prs2_addr_o;
    output reg [4:0] prd_addr_o;
    output reg prs1_valid_o;
    output reg prs2_valid_o;

    // Build a map (Register Alias Table): ISA reg -> phy reg
    reg [4:0] rat [0:31];

    // A busy Table tracks the readiness status of each physical register
    reg busytable [0:31];

    // Internal
    wire [4:0] reg_allocate_addr;

    assign prs1_valid_o = ~busytable[prs1_addr_o] & inst_valid_i;
    assign prs2_valid_o = ~busytable[prs2_addr_o] & inst_valid_i;

    /*wire r0_busy = busytable[0];
    wire r1_busy = busytable[1];
    wire r2_busy = busytable[2];
    wire r3_busy = busytable[3];
    wire r4_busy = busytable[4];
    wire r5_busy = busytable[5];*/
 
    freelist freelist0 (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .reg_free_en_i(cdb_en_i), 
        .reg_free_addr_i(cdb_reg_addr_i), 
        .reg_allocate_en_i(inst_valid_i),
        // Outputs
        .empty_o(), 
        .reg_allocate_addr_o(reg_allocate_addr)
    );

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin
            for (i = 0; i < 31; i ++ ) begin
                rat[i] <= i;
            end
            for (i = 0; i < 32; i ++ ) begin
                busytable[i] <= 'h0;
            end
            prs1_addr_o <= 'h0;
            prs2_addr_o <= 'h0;
            prd_addr_o <= 'h0;
        end
        else if (inst_valid_i) begin
            prs1_addr_o <= rat[rs1_addr_i];
            prs2_addr_o <= rat[rs2_addr_i];
            rat[rd_addr_i] <= reg_allocate_addr;
            prd_addr_o <= reg_allocate_addr;
            busytable[reg_allocate_addr] <= 'h1 & (reg_allocate_addr != 'h0);
        end
        else if (cdb_en_i) begin
            busytable[cdb_reg_addr_i] <= 'h0;
        end
        else begin end
    end

endmodule


// A free List tracks the physical registers that are currently un-used and is
// used to allocate new physical registers to instructions passing through the Rename stage.
// Free List is a FIFO
// TODO: should initialize it with all registers from r1 to r31
module freelist 
#(
    parameter WIDTH = 5,
    parameter DEPTH = 32,
    parameter ADDR_LEN = 5
)
(
    // Inputs
    clk_i, reset_i, reg_free_en_i, reg_free_addr_i, reg_allocate_en_i,

    // Outputs
    empty_o, reg_allocate_addr_o
);
    // Inputs
    input clk_i, reset_i;
    // the registers that are freed
    input reg_free_en_i;
    input [4:0] reg_free_addr_i;
    input reg_allocate_en_i;

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
    assign reg_allocate_addr_o = valid_registers[head];

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin
            // all 
            for (i = 0; i < 31; i ++ ) begin
                valid_registers[i] <= i + 1;
            end
            /*num_free_reg <= 'b10000; // gray code 31
            head <= 'b00000; // gray code 0
            tail <= 'b10000; // gray code 31*/

            // binary
            num_free_reg <= 'd31;
            head <= 'd0;
            tail <= 'd31;
        end 
        else begin
            if (reg_free_en_i & !reg_allocate_en_i) 
                //num_free_reg <= num_free_reg ^ (num_free_reg >> 1); // +1
                num_free_reg <= num_free_reg + 1;
            else if (!reg_free_en_i & reg_allocate_en_i)
                //num_free_reg <= {~num_free_reg[4], num_free_reg[3:0]} ^ ({~num_free_reg[4], num_free_reg[3:0]} >> 1); // -1
                num_free_reg <= num_free_reg - 1;
            else
                num_free_reg <= num_free_reg;
            
            if (reg_free_en_i) begin // add reg to free list
                //tail <= tail ^ (tail >> 1);
                tail <= tail + 1;
                valid_registers[tail] <= reg_free_addr_i;
            end else if (reg_allocate_en_i) begin
                //head <= head ^ (head >> 1);
                head <= head + 1;
            end
        end
    end

endmodule