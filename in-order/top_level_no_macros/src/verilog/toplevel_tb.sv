/* In-order 5-stage pipline processor testbench
 * Notes:
 * - tests all kinds of instructions in the RV32I instruction set
 * - tests for RAW hazard - with stall
 */
module toplevel_tb();

    reg clk, reset;

    toplevel dut (.*);
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
//        `ifndef PRE_SYN
//    	    $sdf_annotate("cpu.sdf", cpu0);
//    	`endif
        //$vcdpluson;
        $fsdbDumpfile("toplevel.fsdb");
        $fsdbDumpvars(0, toplevel_tb);
        $dumpfile("toplevel.vcd");
        $dumpvars();
        reset = 1; #20
        reset = 0;
        #1000
        $finish;
    end

endmodule
