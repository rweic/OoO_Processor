module priority_management_tb();
    reg allocate_i;  // enable signal
    reg [3:0] resource_valid_i;  // the resource is free - entry_free
    wire [3:0] entry_sel_o;

    priority_management pm (.*);
    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        allocate_i = 1'b0; resource_valid_i = 'b1111; #10

        allocate_i = 1'b1; resource_valid_i = 'b1111; #10
        allocate_i = 1'b1; resource_valid_i = 'b0011; #10
        allocate_i = 1'b1; resource_valid_i = 'b0100; #10
        allocate_i = 1'b1; resource_valid_i = 'b0110; #10
        allocate_i = 1'b0; resource_valid_i = 'b1110; #10
        allocate_i = 1'b1; resource_valid_i = 'b1110; #10
        allocate_i = 1'b1; resource_valid_i = 'b1100; #10


        allocate_i = 1'b0; resource_valid_i = 'b1111; #10

        #10
        #10
        $finish;
    end

endmodule