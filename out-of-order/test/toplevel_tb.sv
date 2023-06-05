module toplevel_tb ();
    reg clk_i, reset_i;  

    toplevel toplevel (.*);

    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; @(posedge clk_i); @(posedge clk_i); 
        reset_i = 1'b0; 
        # 150
        $finish;
    end

endmodule