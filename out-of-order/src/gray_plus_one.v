// Module for gray code plus 1
// Usage: gray_plus_one gp #(.WIDTH(5)) (.in(), .out());
module gray_plus_one #(parameter WIDTH = 5) (in, out);
    input [WIDTH-1:0] in;
    output [WIDTH-1:0] out;
    assign out[0] = in[0] ^ 1'b1;
    generate
        for (genvar i = 1; i < WIDTH; i = i + 1) 
            assign out[i] = in[i-1] ^ out[i-1];
    endgenerate
endmodule