/* Load-Store Unit
 * Number of cycles: 
 */
module lsu
#(parameter DMEM_ADDR_LEN = 8) 
(

);
    // Inputs
    input clk_i, reset_i;
    // Should include the data that load/ store needs, or the original inst
    input [31:0] inst_i;
    // Outputs
    // should output the writeback value

    // Wires to memory - add later, put dmem inside this module first

    // Signals to regfile writeback

    // Decoded Signals
    wire[4:0] rs1_addr = inst_i[19:15];
	wire[4:0] rs2_addr = inst_i[24:20];
    wire[4:0] rd_addr = inst_i[11:7];
    wire [6:0] opcode = inst_i[6:0];
	wire [2:0] funct3 = inst_i[14:12];
	wire [31:0] imm_i = {{20{inst_i[31]}}, inst_i[31:20]};

    // Read/write address calculation
    wire [DMEM_ADDR_LEN-1:0] mem_addr; // regfile(rs1_addr) + imm_i; 

    // Internal signals
    wire [31:0] mem_data_in;
    wire [31:0] mem_data_out;
    reg mem_csb_read, mem_csb_write;

    fifo lsu_fifo (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .data_in_i(), 
        .wr_i(), 
        .rd_i(), 
        // Outputs
        .data_out_o(), 
        .valid_o(), 
        .not_full_o()
    );

    // csb need to be 0 when read is enabled or write is enabled
    dmem dmem (
        // Port 0: W
        .clk0(clk_i),
        .csb0(mem_csb_write),
        .addr0(mem_addr),
        .din0(mem_data_in),
        // Port 1: R
        .clk1(clk_i),
        .csb1(mem_csb_read),
        .addr1(mem_addr),
        .dout1(mem_data_out));

    // Data extension for memory
    always @(*) begin
    
    end

    // Set control signals
    always @(*) begin
        case(opcode)
            // For load and store: resource used is lsu
            // funct3 needed to identify the length of that
            // Add an additional signal to indicate if it's read/write
            `OP_LOAD: begin
                // mem[rs1+imm_i] -> rd
                // LW - 32 bits, LH - 16 bits signed, LHU - 16 bits zero ext
                mem_csb_read = 0;
                mem_csb_write = 1;
            end
            `OP_STORE: begin 
                // rs2 -> mem[rs1+imm_s]
                // SW, SH, SB  - 32, 16, 8 bits
                mem_csb_read = 1;
                mem_csb_write = 0;
            end
            default: begin 
                mem_csb_read = 1;
                mem_csb_write = 1;
            end
        endcase
    end


endmodule