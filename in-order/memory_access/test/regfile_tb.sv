module regfile_tb();
    reg clk, rst, w_en;
    reg [4:0] ra_addr, rb_addr, rd_addr;
    reg [31:0] w_data;

    wire [31:0] ra_value, rb_value;

    regfile #(.WIDTH(32)) regfile0 (
        .clk(clk), 
        .rst(rst), 
        .w_en(w_en),
        .ra_addr(ra_addr), 
        .rb_addr(rb_addr), 
        .rd_addr(rd_addr), 
        .w_data(w_data), 
        .ra_value(ra_value), 
        .rb_value(rb_value));

    initial begin
        clk = 1'b0;
        forever #(5) clk = ~clk;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars(clk, rst, w_en, ra_addr, rb_addr, rd_addr, w_data, ra_value, rb_value);
        rst = 1;  w_en = 0; ra_addr = 0; rb_addr = 0; rd_addr = 0; w_data = 0; #20
        rst = 0;  w_en = 0; ra_addr = 0; rb_addr = 0; rd_addr = 0; w_data = 0; #20
        w_en = 1; ra_addr = 0; rb_addr = 0; rd_addr = 0; w_data = 400; #20
        w_en = 1; ra_addr = 0; rb_addr = 0; rd_addr = 1; w_data = 1; #20
        w_en = 1; ra_addr = 1; rb_addr = 1; rd_addr = 2; w_data = 2; #20
        w_en = 1; ra_addr = 1; rb_addr = 2; rd_addr = 31; w_data = 31; #20
        $finish;
    end

endmodule