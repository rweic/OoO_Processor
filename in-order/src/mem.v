/*--------------------------------------------------
Memory Access Module
--------------------------------------------------*/
module memoryaccess #(parameter WIDTH = 32, parameter ADDR_LEN = 32) (
    clk, reset, pc_i, alu_result_i, mem_r_i, pc_o, alu_result_o, load_data
);
    input clk, reset;
    input [ADDR_LEN-1:0] pc_i;
    input [WIDTH-1:0] alu_result_i;
    input [WIDTH-1:0] mem_r_i; // from the memory
    output reg [ADDR_LEN-1:0] pc_o;
    output reg [WIDTH-1:0] alu_result_o;
    output reg [WIDTH-1:0] load_data;

    // Reg MEM-WB
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 32'b0;
            load_data <= 32'b0;
            alu_result_o <= 32'b0;
        end else begin
            pc_o <= pc_i;
            load_data <= mem_r_i;
            alu_result_o <= alu_result_i;
        end
    end

endmodule