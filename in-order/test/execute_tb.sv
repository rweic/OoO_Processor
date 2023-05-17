module execute_tb();

    reg clk, reset, rf_w_en_i, mem_w_en_i;
    reg [1:0] opsel1, opsel2; // need to change the length
    reg [3:0] alu_func;
    reg [31:0] rs1_data_i, rs2_data_i, imm;
    reg [31:0] pc_i;
		reg [4:0]rd_addr_i;
		reg[1:0] wbsel_i;

    reg [31:0] pc_o;
    reg [31:0] alu_out;
		reg [4:0]rd_addr_o;
		reg rf_w_en_o;
		reg[1:0] wbsel_o;
		reg mem_w_en_o;
		reg [31:0] rs2_data_o;

    execute  #(.WORD(32), .ADDR_LEN(32)) execute0(.*);

		/*
			.clk, .reset, .opsel1, .opsel2, 
		  . alu_func, .rs1_data_i_i(rs1_data_i),
			.rs2_data_i(rs2_data_i), .imm, .pc_i,
			.pc_o, .alu_out
		*/
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
			`ifndef PRE_SYN
					$sdf_annotate("execute.sdf", execute0);
			`endif 
					//$vcdpluson;
					$fsdbDumpfile("execute.fsdb");
					$fsdbDumpvars(0, execute_tb);
					$dumpfile("execute.vcd");
					$dumpvars();
        reset = 1'b0;
        alu_func = 4'b0001; opsel1 = 2'b0; opsel2 = 2'b0; rs1_data_i = 32'b100; rs2_data_i = 32'b10; pc_i = 32'b1; #10
        rs1_data_i = 32'b100; rs2_data_i = 32'b110; pc_i = 32'b10; #10
        rs1_data_i = 32'b1110; rs2_data_i = 32'b10110; pc_i = 32'b100; #10
        rs1_data_i = 32'b1010; rs2_data_i = 32'b110110; pc_i = 32'b1000; #10
        $finish;
    end

endmodule
