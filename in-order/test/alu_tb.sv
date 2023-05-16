/*class alu_test;

  rand bit [31:0] op1, op2, out;
  rand bit [3:0] alu_func;
  
  constraint c_alu_func {alu_func inside [0:10];}

endclass*/

module alu_tb();
    reg [31:0] in1, in2;
    reg [3:0] alu_func;
    wire [31:0] out;

		//#(.WIDTH(32))
    alu  alu0 (
        .alu_op1(in1), 
        .alu_op2(in2), 
        .alu_func(alu_func), 
        .alu_out(out)
    );

    initial begin

			`ifndef PRE_SYN
					$sdf_annotate("alu.sdf", alu0);
			`endif
					//$vcdpluson;
					$fsdbDumpfile("alu.fsdb");
					$fsdbDumpvars(0, alu_tb);
					$dumpfile("alu.vcd");
					$dumpvars();
        in1 = 32'b1; in2 = 32'b10; alu_func=4'b1; #10
        in1 = 32'b10; in2 = 32'b10; alu_func=4'b1; #10
        in1 = 32'b11; in2 = 32'b10; alu_func=4'b1;
    end

endmodule
