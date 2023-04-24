/* In-order 5-stage pipline processor testbench
 * Notes:
 * - tests all kinds of instructions in the RV32I instruction set
 * - tests for RAW hazard - with stall
 */
module cpu_tb();
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
    end

endmodule