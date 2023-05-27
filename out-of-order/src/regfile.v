/*--------------------------------------------------
Regfile 2r1w
1 sync write, 2 async read
x0 - zero
x1-x31 general purpose registers
--------------------------------------------------*/
module regfile #(parameter WIDTH=32) (
    clk_i, reset_i, w_en_i, ra_addr_i, rb_addr_i, rd_addr_i, w_data_i, 
    ra_value_o, rb_value_o
    );
    // Inputs
    input clk_i, reset_i;
    input w_en_i; // probably no need for this w_en, just set w_addr to 0 if not supposed to write
    input [4:0] ra_addr_i;
    input [4:0] rb_addr_i;
    input [4:0] rd_addr_i;
    input [WIDTH-1:0] w_data_i;
    // Outputs
    output [WIDTH-1:0] ra_value_o;
    output [WIDTH-1:0] rb_value_o;

    reg [WIDTH-1:0] register [0:31];

    assign ra_value_o = register[ra_addr_i];
    assign rb_value_o = register[rb_addr_i];

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin  
            for (i = 0; i < 32; i = i + 1)
                register[i] <= 0;
            // For testing only, please comment out later
            //register[2] = 'h5;
        end
        else begin
            if (w_en_i & (|rd_addr_i != 0)) // x0 will always be zero
                register[rd_addr_i] <= w_data_i;
        end
    end

endmodule