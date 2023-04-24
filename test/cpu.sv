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