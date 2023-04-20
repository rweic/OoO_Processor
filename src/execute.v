// ToDo: add cases for muxex as inputs
//       fix the length of the mux select signal
module execute #(parameter WORD = 32, parameter ADDR_LEN = 32) ();
    input opsel1, opsel2; // need to change the length
    input [4:0] alu_func;
    input [WORD-1:0] rs1_value, rs2_value, imm, imm_id;
    input [ADDR_LEN-1:0] pc_i;
    output [ADDR_LEN-1:0] pc_o;
    output [WORD-1:0] alu_out;

    wire [WORD-1:0] alu_op1, alu_op2;

    // Mux 1: select alu input 1
    always (*) begin
        // add anything for alu input select (the two muxes)
        case (opsel1):
            default: alu_op1 = 
        endcase
    end

    // Mux 2: select alu input 2
    always (*) begin
        // add anything for alu input select (the two muxes)
        case (opsel2):
            default: alu_op2 = 
        endcase
    end

    alu alu0 (
        .alu_op1(alu_op1), 
        .alu_op2(alu_op2), 
        .alu_func(alu_func), 
        .alu_out(alu_out));

endmodule