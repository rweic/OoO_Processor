module rob_tb();

    rob rob0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; 

        @(posedge clk_i);
        reset_i = 1'b0; @(posedge clk_i);

        // test 1
        
        
        @(posedge clk_i);
        $finish;
    end

endmodule