module arith_tb();
    reg clk_i, reset_i;
    reg [31:0] pc_i;
    reg arith_request_i;
    reg [31:0] inst_i;
    reg [31:0] rs1_value_i;
    reg [31:0] rs2_value_i;

    wire [31:0]  writeback_value_o;

    arith arith0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; arith_request_i = 1'b0; inst_i = 'h0; pc_i = 'h0; rs1_value_i = 'h0; rs2_value_i = 'h0; #10
        reset_i = 1'b0; arith_request_i = 1'b0; inst_i = 'h0; pc_i = 'h0; rs1_value_i = 'h0; rs2_value_i = 'h0; #10
        reset_i = 1'b0; arith_request_i = 1'b1; inst_i = 'h00518093; pc_i = 'h4; rs1_value_i = 'h2; rs2_value_i = 'h0; @(posedge clk_i); // addi x1 x3 5
        reset_i = 1'b0; arith_request_i = 1'b0; inst_i = 'b0; @(posedge clk_i);
        reset_i = 1'b0; arith_request_i = 1'b0; inst_i = 'b0; @(posedge clk_i);
        # 40
        $finish;
    end

endmodule