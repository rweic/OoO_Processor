module hazard_detect(
    input logic [4:0] SourceReg1Dec,
    input logic [4:0] SourceReg2Dec,
    //input logic [4:0] SourceReg1Exec,
    //input logic [4:0] SourceReg2Exec,
    input logic [4:0] DestRegExec,
    input logic [4:0] DestRegMem,
    input logic [4:0] DestRegWriteBack,
    input logic RegisterWriteMem,
    input logic RegisterWriteWriteBack,
    input logic ResultSourceExec0, // flagged when exec stage result is load type instruction
    input logic ProgramCounterSourceExec,
    //output logic [1:0] ForwardingReg1Exec,
    //output logic [1:0] ForwardingReg2Exec,
    output logic StallDecode_o,
    output logic StallFetch_o,
    //output logic FlushDecode,
    //output logic FlushExec
    input logic muldiv_hazard_i
);
                     
    // RAW (Read After Write) Hazard
    // Whenever source registers (SourceReg1Exec, SourceReg2Exec) in the execution stage match
    // with the destination registers (DestRegMem, DestRegWriteBack) of previous instructions' Memory or WriteBack stages,
    // forward the ALUResultM or ResultW only when RegisterWrite is asserted.

    logic LoadWordStall;
    logic RAW_hazard;
    
    always_comb begin
        if (SourceReg1Dec == 0) begin // this keeps from start flagging hazard
            RAW_hazard = 1'b0;
        end
        // Check for RAW hazards for the first source register
        else if ((SourceReg1Dec == DestRegExec) || (SourceReg1Dec == DestRegMem)) begin
            RAW_hazard = 1'b1; // For forwarding ALU Result in Memory Stage
        end
                    
        // Check for RAW hazards for the second source register
        else if ((SourceReg2Dec == DestRegExec) || (SourceReg2Dec == DestRegMem)) begin
            RAW_hazard = 1'b1; // For forwarding ALU Result in Memory Stage
        end else begin
            RAW_hazard = 1'b0;
        end
    end
  
    // Load Word Dependency
    // If the destination register in the Execute stage matches the source registers in the Decode stage,
    // stall previous instructions until the load word is available at the WriteBack stage.
    
    assign LoadWordStall = (ResultSourceExec0 == 1) && ((DestRegExec == SourceReg1Dec) || (DestRegExec == SourceReg2Dec));
    

  
    // Control Hazard
    // Whenever a branch has been taken, flush the following two instructions from the Decode and Execute pipeline registers.
    //assign FlushExec = ProgramCounterSourceExec;
    //assign FlushDecode = ProgramCounterSourceExec;
    
    // MULDIV Hazard
    //assign muldiv_hazard = 
    
    // Signal When Stall should occur in fetch and decode
    assign StallFetch_o = (LoadWordStall || RAW_hazard);
    assign StallDecode_o = (LoadWordStall || RAW_hazard);

endmodule

