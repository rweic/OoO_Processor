/*--------------------------------------------------
Write Back Module
--------------------------------------------------*/
module writeback #(parameter WIDTH = 32, parameter ADDR_LEN = 32) (wbsel, alu_result, dmem_result, imm, pc_i, rf_wdata);
    input [1:0] wbsel;
    input [WIDTH-1:0] alu_result, dmem_result, imm, pc_i;
    output reg [WIDTH-1:0] rf_wdata;

    always @(*) begin
        case (wbsel)
            `WB_ALU:
                rf_wdata = alu_result;
            `WB_DMEM:
                rf_wdata = dmem_result;
            `WB_IMM:
                rf_wdata = imm;
            `WB_PC:
                rf_wdata = pc_i + 4;
            default:
                rf_wdata = 'b0;
        endcase
    end

endmodule