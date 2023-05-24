/* Hazard Handling
 * This is the control module for stalling when there is a hazard 
 */

module hazard_detect #(parameter WORD = 32, parameter INST_LEN = 32) (
    input [INST_LEN-1:0] inst_if,       // Instruction in the IF stage
    input [INST_LEN-1:0] inst_id,       // Instruction in the ID stage
    //input [WORD-1:0] alu_out_ex,        // ALU output in the EX stage
    //input [WORD-1:0] mem_out_mem,       // Memory output in the MEM stage
    output hazard_o                     // Hazard output signal
);

    reg hazard_RAW;

    always @* begin
        // hazards are flagged when same instruction is called twice in a row.
        // Need to add detection of RAW WAR and WAW hazards!
        if (inst_if == inst_id)
            hazard_RAW = 1'b1;                // Hazard detected, set output to 1 (stall)
        else
            hazard_RAW = 1'b0;                // No hazard, set output to 0 (no stall)
    end
    
    assign hazard_o = hazard_RAW;

endmodule

