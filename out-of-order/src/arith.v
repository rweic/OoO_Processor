module arith ();
    input clk, reset;

    alu alu (
        .alu_op1(), 
        .alu_op2(), 
        .alu_func(), 
        .alu_out());

endmodule