module execute_tb();
    reg opsel1, opsel2; // need to change the length
    reg [4:0] alu_func;
    reg [31:0] rs1_value, rs2_value, imm, imm_id;
    reg [31:0] pc_i;

    reg [31:0] pc_o;
    reg [31:0] alu_out;

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
    end

endmodule