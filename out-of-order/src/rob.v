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
    fifo #(
        .WIDTH(1), // each line include the mem addr and some control signals
        .DEPTH(NUM_ENTRIES),
        .ADDR_LEN(5)
    ) 
    buffer
    (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .data_in_i(),
        .wr_i(),
        .rd_i(),
        // Outputs
        .data_out_o(), 
        .empty_o(), 
        .full_o()
    );

endmodule