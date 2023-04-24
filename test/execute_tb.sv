module execute_tb();
    reg clk, reset;
    reg [1:0] opsel1, opsel2; // need to change the length
    reg [3:0] alu_func;
    reg [31:0] rs1_value, rs2_value, imm, imm_id;
    reg [31:0] pc_i;

    reg [31:0] pc_o;
    reg [31:0] alu_out;

    execute  #(.WORD(32), .ADDR_LEN(32)) execute0 (.*);
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset = 1'b0;
        alu_func = 4'b0001; opsel1 = 2'b0; opsel2 = 2'b0; rs1_value = 32'b100; rs2_value = 32'b10; pc_i = 32'b1; #10
        rs1_value = 32'b100; rs2_value = 32'b110; pc_i = 32'b10; #10
        rs1_value = 32'b1110; rs2_value = 32'b10110; pc_i = 32'b100; #10
        rs1_value = 32'b1010; rs2_value = 32'b110110; pc_i = 32'b1000; #10
        $finish;
    end

endmodule