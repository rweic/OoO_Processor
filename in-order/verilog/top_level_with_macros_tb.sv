/* In-order 5-stage pipline processor testbench
 * Notes:
 * - tests all kinds of instructions in the RV32I instruction set
 * - tests for RAW hazard - with stall
 */
module top_level_with_macros_tb();

    reg clk, reset;

    top_level_with_macros dut (.*);
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
//        `ifndef PRE_SYN
//    	    $sdf_annotate("cpu.sdf", cpu0);
//    	`endif
        //$vcdpluson;
        $fsdbDumpfile("top_level_with_macros.fsdb");
        $fsdbDumpvars(0, top_level_with_macros_tb);
        $dumpfile("top_level_with_macros.vcd");
        $dumpvars();
        reset = 1; #20
        reset = 0;
        #1000
        $finish;
    end

endmodule
