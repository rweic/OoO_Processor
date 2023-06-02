/*--------------------------------------------------
Write Back Module
--------------------------------------------------*/
module writeback #(parameter WIDTH = 32, parameter ADDR_LEN = 32) (wbsel, alu_result, dmem_result, imm, pc_i, rf_wdata);
    input [1:0] wbsel;
    input [WIDTH-1:0] alu_result, dmem_result, imm, pc_i;
    output reg [WIDTH-1:0] rf_wdata;

		/*
		reg [] wb_mem_data;
		always @(*) begin
			case ({signed, hw, b})
				wb_mem_data < = extended value from dmem_result
		*/

		/*  // Load extension
    // lsu_out_addr, lsu_out_ls, lsu_out_signed, lsu_out_h, lsu_out_b
    always @(*) begin
        if(mem_load_success & lsu_out_ls) begin // response received, and it's a load
            case({lsu_out_signed, lsu_out_h, lsu_out_b})
                'b000: mem_load_data = mem_data_out;
                'b110: begin
                    if (lsu_out_addr[1] == 1'b1)
                        mem_load_data = {mem_data_out[15:0], 16'h0};
                    else
                        mem_load_data = {{16{mem_data_out[15]}}, mem_data_out[15:0]};
                end
                'b101: begin
                    case (lsu_out_addr[1:0])
                        2'b11: mem_load_data = {mem_data_out[7:0], 24'h0};
                        2'b10: mem_load_data = {{8{mem_data_out[15]}}, mem_data_out[7:0], 16'h0};
                        2'b01: mem_load_data = {{16{mem_data_out[15]}}, mem_data_out[7:0], 8'h0};
                        default: mem_load_data = {{24{mem_data_out[15]}}, mem_data_out[7:0]};
                    endcase
                end
                'b010:
                    if (lsu_out_addr[1] == 1'b1)
                        mem_load_data = {mem_data_out[15:0], 16'h0};
                    else
                        mem_load_data = {16'h0, mem_data_out[15:0]};
                'b001:
                    case (lsu_out_addr[1:0])
                        2'b11: mem_load_data = {mem_data_out[7:0], 24'h0};
                        2'b10: mem_load_data = {8'h0, mem_data_out[7:0], 16'h0};
                        2'b01: mem_load_data = {16'h0, mem_data_out[7:0], 8'h0};
                        default: mem_load_data = {24'h0, mem_data_out[7:0]};
                    endcase
                default: begin 
                    mem_load_data = 'h0;
                end
            endcase
        end*/

    always @(*) begin
        case (wbsel)
            `WB_ALU:
                rf_wdata = alu_result;
            `WB_DMEM:
                rf_wdata = dmem_result; // change to wb _mem_data
            `WB_IMM:
                rf_wdata = imm;
            `WB_PC:
                rf_wdata = pc_i + 4;
            default:
                rf_wdata = 'b0;
        endcase
    end

endmodule
