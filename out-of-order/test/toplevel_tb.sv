module toplevel_tb ();
    reg clk_i, reset_i;  

    toplevel dut (.*);

    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
        `ifndef PRE_SYN
    	    $sdf_annotate("core.syn.sdf", dut/cpu0);
    	`endif
        //$vcdpluson;
        $fsdbDumpfile("toplevel.fsdb");
        $fsdbDumpvars(0, toplevel);
        $dumpfile("toplevel.vcd");
	    $dumpvars();
        reset_i = 1'b1; @(posedge clk_i); @(posedge clk_i); 
        reset_i = 1'b0; 
        # 100
        $finish;
    end

endmodule
