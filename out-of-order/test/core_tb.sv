module core_tb ();
    reg clk_i, reset_i;  

    core core (.*);

    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; # 10
        reset_i = 1'b0; @(posedge clk_i); 
        # 200
        $finish;
    end

endmodule