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


endmodule