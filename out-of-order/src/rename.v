/* Register Rename
 * The module was supposed to solve the name dependencies
 */

module rename ();
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    // Should include the data that load/ store needs, or the original inst
    input [31:0] inst_i;

    // TODO: figure out the logic to discover new data dependencies

    // Build a map : ISA reg -> phy reg

    // A busy Table tracks the readiness status of each physical register\

    // A free List tracks the physical registers that are currently un-used and is
    // used to allocate new physical registers to instructions passing through the Rename stage.
    // Free List is a FIFO
    // TODO: should initialize it with all registers from r1 to r31
        fifo #(
        .WIDTH(5),  // should be able to indicate the length of the reg addr
        .DEPTH(32),
        .ADDR_LEN(5)
    ) 
    lsu_fifo
    (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .data_in_i(), 
        .wr_i(), // when accept inst from issue stage, and the address is calculated
        .rd_i(), // when receive response from memory
        // Outputs
        .data_out_o(), 
        .empty_o(), 
        .full_o()
    );

endmodule