module memoryaccess #(parameter WIDTH = 32, parameter ADDR_LEN = 32) ();
    input clk, reset;
    input [ADDR_LEN-1:0] pc_i;
    output reg [ADDR_LEN-1:0] pc_o;

    // Reg MEM-WB
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 32'b0;
        end else begin
            pc_o <= pc_i;
        end
    end

endmodule