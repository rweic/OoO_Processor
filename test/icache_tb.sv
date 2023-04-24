module icache_tb();
    reg [31:0] addr;

    wire [31:0] data;

    icache icache0 (.*);

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        addr = 32'b0; #10
        addr = 32'b100; #10
        addr = 32'b1000; #10
        addr = 32'b1100; #10
        addr = 32'b10000; #10
        $finish;
    end

endmodule