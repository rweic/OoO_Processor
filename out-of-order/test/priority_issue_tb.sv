module priority_issue_tb();
    reg clk_i;
    reg reset_i;
    reg allocate_i;  // enable signal
    reg [3:0] resource_valid_i;  // the resource is free - entry_free
    reg [3:0] entry_ready_i;  // the entry is ready to be released
    wire [3:0] entry_sel_o; // the selected one for issue

    priority_issue pi (.*);

    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1;
        allocate_i = 1'b0; resource_valid_i = 'b1111; entry_ready_i = 'b0000; @(posedge clk_i);
        reset_i = 1'b0; @(posedge clk_i);
        
        // allocate new, to entry 0, entry 0 age add to 1
        allocate_i = 1'b1; resource_valid_i = 'b1110; entry_ready_i = 'b0000; @(posedge clk_i);

        // allocate new, to entry 1, entry 0 age add to 2, entry 1 age add to 1
        allocate_i = 1'b1; resource_valid_i = 'b1100; entry_ready_i = 'b0000; @(posedge clk_i);

        // no allocation, nothing changed
        allocate_i = 1'b0; resource_valid_i = 'b1100; entry_ready_i = 'b0000; @(posedge clk_i);

        // decide on the issue, should issue entry 0, entry 1 age add to 2
        allocate_i = 1'b0; resource_valid_i = 'b1100; entry_ready_i = 'b0011; @(posedge clk_i);

        // nothing should hanged
        allocate_i = 1'b0; resource_valid_i = 'b1101; entry_ready_i = 'b0000; @(posedge clk_i);
        
        @(posedge clk_i); @(posedge clk_i);
        $finish;
    end

endmodule