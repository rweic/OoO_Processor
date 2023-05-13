module icache_tb();
    reg [31:0] addr;

    wire [31:0] data;

    icache icache0 (.*);

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        addr = 32'b0; #10
        addr = 32'b1; #10
        addr = 32'b10; #10
        addr = 32'b11; #10
        addr = 32'b10; #10
        $finish;
    end

endmodule