module dcache #(parameter WIDTH=32, parameter ADDR_LEN=6) (clk, reset, w_en, wdata, raddr, waddr, rdata);
    input clk, reset, w_en;
    input [WIDTH-1:0] wdata;
    input [ADDR_LEN-1:0] raddr, waddr;
    output [WIDTH-1:0] rdata;
    reg [WIDTH-1:0] mem [0:2<<ADDR_LEN-1];

    integer i;
    
    assign rdata = mem[raddr];

    always @(posedge clk) begin
        if (reset) begin
            for (i = 1; i < 32; i = i + 1)
                mem[i] <= 0;
            mem[0] <= 32'hACE1;   //  for test only, please comment out later
        end
        else if (w_en)
            mem[waddr] <= wdata;
    end

endmodule