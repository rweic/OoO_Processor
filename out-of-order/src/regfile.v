/*--------------------------------------------------
Regfile 6r1w
1 sync write, 2 async read
x0 - zero
x1-x31 general purpose registers
--------------------------------------------------*/
module regfile #(parameter WIDTH=32) (
    clk_i, reset_i, w_en_i, 
    ra1_addr_i, rb1_addr_i, 
    ra2_addr_i, rb2_addr_i, 
    ra3_addr_i, rb3_addr_i, 
    rd_addr_i, w_data_i, 
    ra1_value_o, rb1_value_o,
    ra2_value_o, rb2_value_o,
    ra3_value_o, rb3_value_o
    );
    // Inputs
    input clk_i, reset_i;
    input w_en_i; // probably no need for this w_en, just set w_addr to 0 if not supposed to write
    input [4:0] ra1_addr_i;
    input [4:0] rb1_addr_i;
    input [4:0] ra2_addr_i;
    input [4:0] rb2_addr_i;
    input [4:0] ra3_addr_i;
    input [4:0] rb3_addr_i;
    input [4:0] rd_addr_i;
    input [WIDTH-1:0] w_data_i;
    // Outputs
    output [WIDTH-1:0] ra1_value_o;
    output [WIDTH-1:0] rb1_value_o;
    output [WIDTH-1:0] ra2_value_o;
    output [WIDTH-1:0] rb2_value_o;
    output [WIDTH-1:0] ra3_value_o;
    output [WIDTH-1:0] rb3_value_o;

    reg [WIDTH-1:0] register [0:31];

    assign ra1_value_o = register[ra1_addr_i];
    assign rb1_value_o = register[rb1_addr_i];
    assign ra2_value_o = register[ra2_addr_i];
    assign rb2_value_o = register[rb2_addr_i];
    assign ra3_value_o = register[ra3_addr_i];
    assign rb3_value_o = register[rb3_addr_i];

    integer i;
    always @(posedge clk_i) begin
        if (reset_i) begin  
            for (i = 0; i < 32; i = i + 1)
                register[i] <= 0;
            // For testing only, please comment out later
            register[2] <= 'h5;
            register[3] <= 'h4;
            register[6] <= 'h3;
            register[9] <= 'h10;
        end
        else begin
            if (w_en_i & (|rd_addr_i != 0)) // x0 will always be zero
                register[rd_addr_i] <= w_data_i;
        end
    end

endmodule