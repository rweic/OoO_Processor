// ToDo: add cases for muxex as inputs
//       fix the length of the mux select signal
module execute #(parameter WORD = 32, parameter ADDR_LEN = 32) (
    clk, reset, opsel1, opsel2, alu_func, rs1_value, rs2_value, imm, imm_id, pc_i, pc_o, alu_out
);
    input clk, reset;
    input [1:0] opsel1, opsel2; // need to change the length
    input [3:0] alu_func;
    input [WORD-1:0] rs1_value, rs2_value, imm, imm_id;
    input [ADDR_LEN-1:0] pc_i;
    output reg [ADDR_LEN-1:0] pc_o;
    output reg [WORD-1:0] alu_out;

    reg [WORD-1:0] alu_op1, alu_op2;
    wire [WORD-1:0] alu_out_temp;

    // Reg EX-MEM
    always @(posedge clk) begin
        if (reset) begin
            pc_o <= 32'b0;
            alu_out <= 32'b0;
        end else begin
            pc_o <= pc_i;
            alu_out <= alu_out_temp;
        end
    end

    // Mux 1: select alu input 1
    always @(*) begin
        // add anything for alu input select (the two muxes)
        case (opsel1)
            2'b00: alu_op1 = rs1_value;
            default: alu_op1 = rs1_value;
        endcase
    end

    // Mux 2: select alu input 2
    always @(*) begin
        // add anything for alu input select (the two muxes)
        case (opsel2)
            2'b00: alu_op2 = rs2_value;
            default: alu_op2 = rs2_value;
        endcase
    end

    alu #(.WIDTH(32)) alu0 (
        .alu_op1(alu_op1), 
        .alu_op2(alu_op2), 
        .alu_func(alu_func), 
        .alu_out(alu_out_temp));

endmodule