module instructfetch_tb();
    reg [31:0] addr;

    wire [31:0] data;

    instructfetch fetch (.*);
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset = 1'b1; #10
        reset = 1'b0; addr = 32'b0; #20
        reset = 1'b0; addr = 32'b100; #20
        $finish;
    end

endmodule