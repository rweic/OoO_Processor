/* Load-Store Unit
 * Number of stages: one for address calculation, one for memory accessing 
 */
module lsu
#(parameter DMEM_ADDR_LEN = 8) 
(
    // Inputs
    clk_i, reset_i, pc_i, inst_i, rs1_value_i, rs2_value_i
);
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    // Should include the data that load/ store needs, or the original inst
    input [31:0] inst_i;
    // Value of registers should be known by this point
    input [31:0] rs1_value_i;
    input [31:0] rs2_value_i;
    // Outputs
    // should output the writeback value

    // Wires to memory - add later, put dmem inside this module first

    // Signals to regfile writeback

    // Decoded Signals
    wire [4:0] rs1_addr = inst_i[19:15];
	wire [4:0] rs2_addr = inst_i[24:20];
    wire [4:0] rd_addr = inst_i[11:7];
    wire [6:0] opcode = inst_i[6:0];
	wire [2:0] funct3 = inst_i[14:12];
	wire [31:0] imm_i = {{20{inst_i[31]}}, inst_i[31:20]};
    wire [11:0] imm_s = {inst_i[31:25], inst_i[11:7]};

    // Data into LSB
    //wire [11:0] lsb_in = {};

    // Address Generation
    // TODO: Replace with other kinds of adders later
    wire [DMEM_ADDR_LEN-1:0] mem_addr_r = rs1_value_i + imm_i; // addr_r = regfile(rs1_addr) + imm_i; 
    wire [DMEM_ADDR_LEN-1:0] mem_addr_w = rs1_value_i + imm_s; // addr_r = regfile(rs1_addr) + imm_s; 
    // Alternative plan: this should cost one stage --> NO NEED anymore, SRAM input takes one cycle for stability
    /*reg [DMEM_ADDR_LEN-1:0] mem_addr_r;
    reg [DMEM_ADDR_LEN-1:0] mem_addr_w;
    always @(posedge clk_i) begin
        mem_addr_r <= rs1_value_i + imm_i;
        mem_addr_w <= rs1_value_i + imm_s;
    end*/

    // Internal signals
    reg [31:0] mem_data_in;
    wire [31:0] mem_data_out; // The whole word read from memory
    reg mem_csb_read, mem_csb_write;
    wire [31:0] rs1_value;
    wire [31:0] rs2_value;  // convert to mem input according to funct3

    // Load/store buffer
    // FIFO stores: load/store?, addr, 
    /*fifo #(
        .WIDTH(32),
        .DEPTH(4),
        .ADDR_LEN(2)
    ) 
    lsu_fifo
    (
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
    );*/

    // csb need to be 0 when read is enabled or write is enabled
    dmem dmem (
        // Port 0: Write
        .clk0(clk_i),
        .csb0(mem_csb_write),
        .wmask0('b1111),
        .addr0(mem_addr_w),
        .din0(mem_data_in),
        // Port 1: Read
        .clk1(clk_i),
        .csb1(mem_csb_read),
        .addr1(mem_addr_r),
        .dout1(mem_data_out));

    // Data extension for memory (it only writes 2 bits now???)
    always @(*) begin
        case(funct3)
            `FUNCT3_SW: mem_data_in = rs2_value_i;
            `FUNCT3_SH: mem_data_in = rs2_value_i;
            `FUNCT3_SB: mem_data_in = rs2_value_i;
            default: begin end
        endcase
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