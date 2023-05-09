/* Register Rename
 * The module was supposed to solve the name dependencies
 */

module rename ();
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    // The register addr of inst being decoded
    input [4:0] rs1_addr_i;
    input [4:0] rs2_addr_i;
    input [4:0] rd_addr_i;
    // Updates from common data bus
    input cdb_en_i;

    // Outputs
    output [4:0] prs1_addr_o;
    output [4:0] prs2_addr_o;
    output [4:0] prd_addr_o;
    // Commit


    // TODO: figure out the logic to discover new data dependencies

    // Build a map (Register Alias Table): ISA reg -> phy reg
    reg [4:0] rat [0:31];

    // A busy Table tracks the readiness status of each physical register
    reg busytable [0:31];


endmodule


// A free List tracks the physical registers that are currently un-used and is
// used to allocate new physical registers to instructions passing through the Rename stage.
// Free List is a FIFO
// TODO: should initialize it with all registers from r1 to r31
module freelist 
#(
    parameter WIDTH = 5,
    parameter DEPTH = 32,
)
(
    
);
    // Inputs
    input clk_i, reset_i;
    // the registers that are freed
    input reg_free_en_i;
    input [4:0] reg_free_addr_i;

    reg [4:0] valid_registers [0:31];

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin
            for (i = 1; i < 32; i ++ ) begin
                valid_registers[i] <= i;
            end
        end 
        else begin
        end
    end
endmodule