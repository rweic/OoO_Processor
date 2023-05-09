/* Decode Module
 * pre-assign resource, rename reg to solve data dependencies
 */
module decode ();
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    input inst_valid_i;
    input [31:0] inst_i;
    // Outputs
    output [31:0] pc_o;
    output alu_o;
    output lsu_o;
    output muldiv_o;
    output br_o;

    decoder dec0 (
        // Inputs
        .inst_i(inst_i),
        // Outputs
        .alu_o(alu_o), 
        .lsu_o(lsu_o), 
        .muldiv_o(muldiv_o), 
        .br_o(br_o));

endmodule