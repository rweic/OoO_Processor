/*--------------------------------------------------
Memory Access Module
--------------------------------------------------*/
module memoryaccess #(parameter WIDTH = 32, parameter ADDR_LEN = 32) (
    clk, reset, pc_i, alu_result_i, mem_r_i, rd_addr_i, rf_w_en_i, imm_i, wbsel_i, pc_o, alu_result_o, load_data, rd_addr_o, rf_w_en_o, imm_o, wbsel_o
);
    input clk, reset;
    input [ADDR_LEN-1:0] pc_i;
    input [WIDTH-1:0] alu_result_i;
    input [WIDTH-1:0] mem_r_i; // from the memory
    input [4:0] rd_addr_i;
    input rf_w_en_i;
    input [WIDTH-1:0] imm_i;
    input [1:0] wbsel_i;
    output reg [ADDR_LEN-1:0] pc_o;
    output reg [WIDTH-1:0] alu_result_o;
    output reg [WIDTH-1:0] load_data;
    output reg [4:0] rd_addr_o;
    output reg rf_w_en_o;
    output reg [WIDTH-1:0] imm_o;
    output reg [1:0] wbsel_o;


    // Reg MEM-WB
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 'b0;
            alu_result_o <= 'b0;
            rd_addr_o <= 'b0;
            rf_w_en_o <= 'b0;
            load_data <= 'b0;
            imm_o <= 'b0;
            wbsel_o <= 'b0;
        end else begin
            pc_o <= pc_i;
            alu_result_o <= alu_result_i;
            rd_addr_o <= rd_addr_i;
            rf_w_en_o <= rf_w_en_i;
            load_data <= mem_r_i;
            imm_o <= imm_i;
            wbsel_o <= wbsel_i;
        end
    end

endmodule