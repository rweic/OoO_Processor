module regfile #(parameter WIDTH=32) (clk, rst, w_en, ra_addr, rb_addr, rd_addr, w_data, ra_value, rb_value);
    input clk, rst, w_en;
    input [4:0] ra_addr, rb_addr, rd_addr;
    input [WIDTH-1:0] w_data;

    output reg [WIDTH-1:0] ra_value, rb_value;

    reg [WIDTH-1:0] register [0:31];
    
    integer i;

    assign ra_value = register[ra_addr];
    assign rb_value = register[rb_addr];

    always @(posedge clk) begin
        if (rst) begin  
            for (i = 0; i < 32; i = i + 1)
                register[i] <= 0;
        end
        else begin
            if (w_en & (|rd_addr != 0)) // x0 will always be zero
                register[rd_addr] <= w_data;
        end
    end

endmodule