module mul_tb ();
    reg clk_i, reset_i;
    reg [31:0] pc_i;
    // Should include the data that load/ store needs, or the original inst
    reg mul_request_i;
    reg [31:0] inst_i;
    // Value of registers should be known by this point
    reg [31:0] rs1_value_i;
    reg [31:0] rs2_value_i;
    
    // Outputs
    wire writeback_valid_o;
    wire [31:0]  writeback_value_o;

    mul mul0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; mul_request_i = 1'b0; inst_i = 'h0; pc_i = 'h0; rs1_value_i = 'h0; rs2_value_i = 'h0; @(posedge clk_i); 
        reset_i = 1'b0; @(posedge clk_i); 

        mul_request_i = 1'b1; inst_i = 'h023100b3; pc_i = 'h4; rs1_value_i = 'h1; rs2_value_i = 'hf0000001; @(posedge clk_i);  // mul x1, x2, x3

        // MULH/ MULHU/ MULHSU upper 32 bits (signed×signed, unsigned×unsigned, signed×unsigned)
        mul_request_i = 1'b1; inst_i = 'h023110b3; pc_i = 'h8; rs1_value_i = 'h2; rs2_value_i = 'h2; @(posedge clk_i);  // mulh x1 x2 x3
        
        mul_request_i = 1'b1; inst_i = 'h023130b3; pc_i = 'hc; rs1_value_i = 'h3; rs2_value_i = 'h3; @(posedge clk_i);  // mulhu x1 x2 x3
        
        mul_request_i = 1'b1; inst_i = 'h023120b3; pc_i = 'h10; rs1_value_i = 'h4; rs2_value_i = 'h4; @(posedge clk_i);  // mulhsu x1 x2 x3
        
        mul_request_i = 1'b0; inst_i = 'h0; pc_i = 'h0; rs1_value_i = 'h0; rs2_value_i = 'h0; 
        
        @(posedge clk_i); @(posedge clk_i);
        $finish;
    end


endmodule