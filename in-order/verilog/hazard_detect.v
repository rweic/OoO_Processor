/* Hazard Handling
 * This is the control module for stall while there is an hazard 
 */

// TODO: Implement it later!
module hazard_detect #(parameter WORD = 32, parameter INST_LEN = 32) ();
    input [INST_LEN-1:0] inst_if;
    input [INST_LEN-1:0] inst_id;
    input [WORD-1:0] alu_out_ex;
    input [WORD-1:0] mem_out_mem;
    output stall_if;
    output stall_id;
    output stall_ex;
    output stall_mem;


endmodule