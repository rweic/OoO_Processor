/* Load-Store Unit
 * Number of stages: one for address calculation, one for memory accessing 
 */
module lsu
#(parameter DMEM_ADDR_LEN = 8) 
(
    // Inputs
    clk_i, reset_i, pc_i, lsu_request_i, inst_i, rs1_value_i, rs2_value_i,
    // Outputs
    busy_o, writeback_valid_o, writeback_value_o
);
    // Inputs
    input clk_i, reset_i;
    input [31:0] pc_i;
    // Should include the data that load/ store needs, or the original inst
    input lsu_request_i;  // The signal indicating that a inst is dispatched to lsu
    input [31:0] inst_i;
    // Value of registers should be known by this point
    input [31:0] rs1_value_i;
    input [31:0] rs2_value_i;
    // Outputs
    output busy_o;  // an output signal indicating that the resource is not valid
    // Signals to regfile writeback, valid signal and writeback value, the rd addr should be kept in rob
    output writeback_valid_o;
    output [31:0]  writeback_value_o;

    // Wires to memory - add later, put dmem inside this module first

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
    wire [31:0] mem_data_in = rs2_value_i;
    wire [31:0] mem_data_out; // The whole word read from memory
    reg [3:0] wmask;
    reg mem_csb_read, mem_csb_write;
    wire [31:0] rs1_value;
    wire [31:0] rs2_value;  // convert to mem input according to funct3
    wire lsb_full;  // load store buffer is full
    wire lsb_empty;

    // Load mask & extension
    reg mem_ls;
    reg mem_signed;
    reg mem_h;
    reg mem_b;

    wire [DMEM_ADDR_LEN-1:0] lsu_out_addr;
    wire lsu_out_ls;
    wire lsu_out_signed;
    wire lsu_out_h;
    wire lsu_out_b;


    // NEED TO IMPLEMENT THIS SIGNAL WHEN CACHE IS BUILT
    reg mem_load_success;
    always @(posedge clk_i) begin
        mem_load_success <= (!mem_csb_read) | (!mem_csb_read);
    end


    // Load/store mem_aligned - r/w only happens when alignment requirements met
    reg mem_aligned;
    reg [31:0] mem_load_data;

    assign busy_o = lsb_full;

    assign writeback_valid_o = mem_load_success; 

    // Load/store buffer
    // pop should be enabled when receiving responde from mem/cache
    // small mem bank, store mem & data -> be able to write the address. should always wait for the first one taken out
    fifo #(
        .WIDTH(DMEM_ADDR_LEN + 4), // each line include the mem addr and some control signals
        .DEPTH(2),
        .ADDR_LEN(1)
    ) 
    lsu_fifo
    (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .data_in_i({mem_addr_r, mem_ls, mem_signed, mem_h, mem_b}), // {mem_addr, l=1/s=0, lw00/lh10/lb11 }
        .wr_i(lsu_request_i & (!lsb_full)), // when accept inst from issue stage, and the address is calculated, and load store buffer is not full
        .rd_i(mem_load_success), // when receive response from memory
        // Outputs
        .data_out_o({lsu_out_addr, lsu_out_ls, lsu_out_signed, lsu_out_h, lsu_out_b}), 
        .empty_o(lsb_empty), 
        .full_o(lsb_full)
    );

    // csb need to be 0 when read is enabled or write is enabled
    dmem dmem (
        // Port 0: Write
        .clk0(clk_i),
        .csb0(mem_csb_write),
        .wmask0(wmask),
        .addr0(mem_addr_w >> 2),
        .din0(mem_data_in),
        // Port 1: Read
        .clk1(clk_i),
        .csb1(mem_csb_read),
        .addr1(mem_addr_r >> 2),
        .dout1(mem_data_out));

    // Set mem_aligned
    always @(*) begin
        case (funct3)
            `FUNCT3_LW_SW: mem_aligned = mem_addr_r[1:0] == 2'b0;
            `FUNCT3_LH_SH: mem_aligned = mem_addr_r[0] == 1'b0;
            default: mem_aligned = 1'b1;
        endcase
    end

    // Data extension for memory - need to check for mem_aligned
    // What should I do if it's not aligned?
    always @(*) begin
        if (opcode == `OP_STORE & mem_aligned) begin
            mem_ls = 0;
            case(funct3)
                `FUNCT3_LW_SW: wmask = 'b1111;
                `FUNCT3_LH_SH: begin
                    if (mem_addr_w[1] == 1'b1)
                        wmask = 'b1100;
                    else
                        wmask = 'b0011;
                end
                `FUNCT3_LB_SB: begin
                    case (mem_addr_w[1:0])
                        2'b11: wmask = 'b1000;
                        2'b10: wmask = 'b0100;
                        2'b01: wmask = 'b0010;
                        default: wmask = 'b0001;
                    endcase
                end
            endcase
        end
        else if (opcode == `OP_LOAD & mem_aligned) begin
            mem_ls = 1;
            case (funct3)
                `FUNCT3_LW_SW: begin 
                    mem_signed = 1;
                    {mem_h, mem_b} = 2'b00;
                end
                `FUNCT3_LH_SH: begin 
                    mem_signed = 1;
                    {mem_h, mem_b} = 2'b10;
                end
                `FUNCT3_LB_SB: begin 
                    mem_signed = 1;
                    {mem_h, mem_b} = 2'b01;
                end
                `FUNCT3_LHU: begin
                    mem_signed = 0;
                    {mem_h, mem_b} = 2'b10;
                end
                `FUNCT3_LBU: begin
                    mem_signed = 0;
                    {mem_h, mem_b} = 2'b01;
                end
                default: wmask = 'b0000;
            endcase
        end
    end


    // Load extension
    always @(*) begin
        case(funct3)
            `FUNCT3_LW_SW: mem_load_data <= mem_data_out;
            `FUNCT3_LH_SH: begin
                if (mem_addr_r[1] == 1'b1)
                    mem_load_data <= {mem_data_out[15:0], 16'h0};
                else
                    mem_load_data = {{16{mem_data_out[15]}}, mem_data_out[15:0]};
            end
            `FUNCT3_LB_SB: begin
                case (mem_addr_r[1:0])
                    2'b11: mem_load_data = {mem_data_out[7:0], 24'h0};
                    2'b10: mem_load_data = {{8{mem_data_out[15]}}, mem_data_out[7:0], 16'h0};
                    2'b01: mem_load_data = {{16{mem_data_out[15]}}, mem_data_out[7:0], 8'h0};
                    default: mem_load_data = {{24{mem_data_out[15]}}, mem_data_out[7:0]};
                endcase
            end
            `FUNCT3_LHU:
                if (mem_addr_r[1] == 1'b1)
                    mem_load_data = {mem_data_out[15:0], 16'h0};
                else
                    mem_load_data = {16'h0, mem_data_out[15:0]};
            `FUNCT3_LBU:
                case (mem_addr_r[1:0])
                    2'b11: mem_load_data = {mem_data_out[7:0], 24'h0};
                    2'b10: mem_load_data = {8'h0, mem_data_out[7:0], 16'h0};
                    2'b01: mem_load_data = {16'h0, mem_data_out[7:0], 8'h0};
                    default: mem_load_data = {24'h0, mem_data_out[7:0]};
                endcase
            default: begin 
                mem_load_data = 'h0;
            end
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