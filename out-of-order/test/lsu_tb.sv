module lsu_tb();
    reg clk_i, reset_i;
    reg [31:0] pc_i;
    reg lsu_request_i;
    reg [31:0] inst_i;
    reg [31:0] rs1_value_i;
    reg [31:0] rs2_value_i;

    wire busy_o;
    wire writeback_valid_o;
    wire [31:0]  writeback_value_o;

    lsu lsu (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; #10
        reset_i = 1'b0; inst_i = 'b0;  @(posedge clk_i);
        //reset_i = 1'b0; inst_i = 'b00000000001000001010001000100011; rs1_value_i = 'h0; rs2_value_i = 'hffff; @(posedge clk_i); // SW: rs2 = 2, rs1 = 1, imm = 4: mem[4] <- regfile[2]
        reset_i = 1'b0; inst_i = 'b00000000001000001000001000100011; rs1_value_i = 'h0; rs2_value_i = 'hffff; lsu_request_i = 1'b1; @(posedge clk_i); // SB: rs2 = 2, rs1 = 1, imm = 4: mem[4] <- regfile[2]
        reset_i = 1'b0; inst_i = 'b0;  rs1_value_i = 'h0; rs2_value_i = 'h0; lsu_request_i = 1'b0; @(posedge clk_i);
        reset_i = 1'b0; inst_i = 'b0;  @(posedge clk_i);
        reset_i = 1'b0; inst_i = 'b0;  @(posedge clk_i);
        reset_i = 1'b0; inst_i = 'b0;  @(posedge clk_i);
        reset_i = 1'b0; inst_i = 'b00000000010000000000000110000011; lsu_request_i = 1'b1; @(posedge clk_i); // LB: rd = 3, rs1 = 0, imm = 4; regfile[3] <- mem[4]
        reset_i = 1'b0; inst_i = 'b0; lsu_request_i = 1'b0; @(posedge clk_i);
        # 40
        $finish;
    end

endmodule