module hazard_detect(
    input logic [4:0] SourceReg1Dec,
    input logic [4:0] SourceReg2Dec,
    input logic [4:0] SourceReg1Exec,
    input logic [4:0] SourceReg2Exec,
    input logic [4:0] DestRegExec,
    input logic [4:0] DestRegMem,
    input logic [4:0] DestRegWriteBack,
    input logic RegisterWriteMem,
    input logic RegisterWriteWriteBack,
    input logic ResultSourceExec0,
    input logic ProgramCounterSourceExec,
    output logic [1:0] ForwardingReg1Exec,
    output logic [1:0] ForwardingReg2Exec,
    output logic StallDecode,
    output logic StallFetch,
    output logic FlushDecode,
    output logic FlushExec
);
                     
    // RAW (Read After Write) Hazard
    // Whenever source registers (SourceReg1Exec, SourceReg2Exec) in the execution stage match
    // with the destination registers (DestRegMem, DestRegWriteBack) of previous instructions' Memory or WriteBack stages,
    // forward the ALUResultM or ResultW only when RegisterWrite is asserted.

    logic LoadWordStall;
    
    always_comb begin
        ForwardingReg1Exec = 2'b00;
        ForwardingReg2Exec = 2'b00;
        
        // Check for RAW hazards for the first source register
        if (SourceReg1Exec == DestRegMem && RegisterWriteMem && SourceReg1Exec != 0) begin
            ForwardingReg1Exec = 2'b10; // For forwarding ALU Result in Memory Stage
        end
        else if (SourceReg1Exec == DestRegWriteBack && RegisterWriteWriteBack && SourceReg1Exec != 0) begin
            ForwardingReg1Exec = 2'b01; // For forwarding WriteBack Stage Result
        end
                    
        // Check for RAW hazards for the second source register
        if (SourceReg2Exec == DestRegMem && RegisterWriteMem && SourceReg2Exec != 0) begin
            ForwardingReg2Exec = 2'b10; // For forwarding ALU Result in Memory Stage
        end
        else if (SourceReg2Exec == DestRegWriteBack && RegisterWriteWriteBack && SourceReg2Exec != 0) begin
            ForwardingReg2Exec = 2'b01; // For forwarding WriteBack Stage Result
        end
    end
  
    // Load Word Dependency
    // If the destination register in the Execute stage matches the source registers in the Decode stage,
    // stall previous instructions until the load word is available at the WriteBack stage.
    // Introduce one-cycle latency for subsequent instructions after the load word.
    // There is a two-cycle difference between Memory Access and the immediate next instruction.
    
    assign LoadWordStall = ResultSourceExec0 == 1 && (DestRegExec == SourceReg1Dec || DestRegExec == SourceReg2Dec);
    assign StallFetch = LoadWordStall;
    assign StallDecode = LoadWordStall;
  
    // Control Hazard
    // Whenever a branch has been taken, flush the following two instructions from the Decode and Execute pipeline registers.
    
    assign FlushExec = LoadWordStall || ProgramCounterSourceExec;
    assign FlushDecode = ProgramCounterSourceExec;

endmodule

