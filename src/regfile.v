module regfile #(parameter WIDTH=32) (clk, rst, w_en, ra_addr, rb_addr, rd_addr, w_data, ra_value, rb_value);
    input clk, rst, w_en;
    input [4:0] ra_addr, rb_addr, rd_addr;
    input [WIDTH-1:0] w_data;

    output reg [WIDTH-1:0] ra_value, rb_value;

    reg [WIDTH-1:0] register [0:31];

    assign ra_value = register[ra_addr];
    assign rb_value = register[rb_addr];

    always @(posedge clk) begin
        if (rst) begin
            register[0] <= 0;
            register[1] <= 0;
            register[2] <= 0;
            register[3] <= 0;
            register[4] <= 0;
            register[5] <= 0;
            register[6] <= 0;
            register[7] <= 0;
            register[8] <= 0;
            register[9] <= 0;
            register[10] <= 0;
            register[11] <= 0;
            register[12] <= 0;
            register[13] <= 0;
            register[14] <= 0;
            register[15] <= 0;
            register[16] <= 0;
            register[17] <= 0;
            register[18] <= 0;
            register[19] <= 0;
            register[20] <= 0;
            register[21] <= 0;
            register[22] <= 0;
            register[23] <= 0;
            register[24] <= 0;
            register[25] <= 0;
            register[26] <= 0;
            register[27] <= 0;
            register[28] <= 0;
            register[29] <= 0;
            register[30] <= 0;
            register[31] <= 0;
        end
        else begin
            if (w_en & (|rd_addr != 0)) // x0 will always be zero
                register[rd_addr] <= w_data;
        end
    end

endmodule