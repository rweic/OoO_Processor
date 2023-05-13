module writeback_tb();
    reg [1:0] wb_sel;
    reg [31:0] alu_result, dmem_result, imm_u, pc_i;
    wire [31:0] rf_wdata;

    writeback writeback0 (.*);

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        wb_sel = 2'b00; alu_result = 32'b1; dmem_result = 32'b10; imm_u = 32'b100; pc_i = 32'b1000; #20
        wb_sel = 2'b01; alu_result = 32'b1; dmem_result = 32'b10; imm_u = 32'b100; pc_i = 32'b1000; #20
        wb_sel = 2'b10; alu_result = 32'b1; dmem_result = 32'b10; imm_u = 32'b100; pc_i = 32'b1000; #20
        wb_sel = 2'b11; alu_result = 32'b1; dmem_result = 32'b10; imm_u = 32'b100; pc_i = 32'b1000; #20
        #40
        $finish;
    end

endmodule