/*--------------------------------------------------
Regfile 2r1w
1 sync write, 2 async read
x0 - zero
x1-x31 general purpose registers
--------------------------------------------------*/
module regfile #(parameter WIDTH=32) (clk, reset, w_en, ra_addr, rb_addr, rd_addr, w_data, ra_value, rb_value);
    // Inputs
    input clk, reset;
    input w_en; // probably no need for this w_en, just set w_addr to 0 if not supposed to write
    input [4:0] ra_addr;
    input [4:0] rb_addr;
    input [4:0] rd_addr;
    input [WIDTH-1:0] w_data;
    // Outputs
    output [WIDTH-1:0] ra_value;
    output [WIDTH-1:0] rb_value;

    reg [WIDTH-1:0] register [0:31];

    assign ra_value = register[ra_addr];
    assign rb_value = register[rb_addr];

    integer i;
    always @(posedge clk) begin
        if (reset) begin  
            for (i = 0; i < 32; i = i + 1)
                register[i] <= 0;
            // For testing only, please comment out later
            //register[2] = 'h5;
        end
        else begin
            if (w_en & (|rd_addr != 0)) // x0 will always be zero
                register[rd_addr] <= w_data;
        end
    end

endmodule