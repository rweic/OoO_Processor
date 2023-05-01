// ToDo: add cases for muxex as inputs
//       fix the length of the mux select signal
/*--------------------------------------------------
Execute Module
--------------------------------------------------*/
module execute #(parameter WIDTH = 32, parameter ADDR_LEN = 32) (
    clk, reset, opsel1, opsel2, alu_func, rs1_data, rs2_data, rd_addr_i, rf_w_en_i, imm, pc_i, wbsel_i, pc_o, alu_out, rd_addr_o, rf_w_en_o, wbsel_o);
    input clk, reset;
    input [1:0] opsel1, opsel2; // need to change the length
    input [3:0] alu_func;
    input [WIDTH-1:0] rs1_data, rs2_data, imm;
    input [ADDR_LEN-1:0] pc_i;
    input [4:0] rd_addr_i;
    input rf_w_en_i;
    input [1:0] wbsel_i;
    output reg [ADDR_LEN-1:0] pc_o;
    output reg [WIDTH-1:0] alu_out;
    output reg [4:0] rd_addr_o;
    output reg rf_w_en_o;
    output reg [1:0] wbsel_o;

    reg [WIDTH-1:0] alu_op1, alu_op2;
    wire [WIDTH-1:0] alu_out_temp;

    // Reg EX-MEM
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 'b0;
            alu_out <= 'b0;
            rd_addr_o <= 'b0;
            rf_w_en_o <= 'b0;
            wbsel_o <= 'b0;
        end else begin
            pc_o <= pc_i;
            alu_out <= alu_out_temp;
            rd_addr_o <= rd_addr_i;
            rf_w_en_o <= rf_w_en_i;
            wbsel_o <= wbsel_i;
        end
    end

    // Mux 1: select alu input 1
    always @(*) begin
        // add anything for alu input select (the two muxes)
        case (opsel1)
            `OPSEL_RS1: alu_op1 = rs1_data;
            `OPSEL_PC: alu_op1 = pc_i;
            default: alu_op1 = 'b0;
        endcase
    end

    // Mux 2: select alu input 2
    always @(*) begin
        // add anything for alu input select (the two muxes)
        case (opsel2)
            `OPSEL_RS2: alu_op2 = rs2_data;
            `OPSEL_IMM: alu_op2 = imm;
            default: alu_op2 = 'b0;
        endcase
    end

    alu alu0 (
        .alu_op1(alu_op1), 
        .alu_op2(alu_op2), 
        .alu_func(alu_func), 
        .alu_out(alu_out_temp));

endmodule