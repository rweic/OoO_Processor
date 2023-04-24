module memoryaccess_tb();
    reg clk, reset;
    reg [31:0] pc_i;

    wire [31:0] pc_o;

    memoryaccess memoryaccess (.*);
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset = 1'b1; #20
        reset = 1'b0; pc_i = 32'b0; #20
        reset = 1'b0; pc_i = 32'b100; #20
        reset = 1'b0; pc_i = 32'b1000; #20
        #40
        $finish;
    end

endmodule