/* Reservation Station
 * This module should include the space for holding instructions that hasn't 
 * dispatched and a priority encoder to send it to the FUs
 */
module rs #(
    parameter RS_SIZE = 4
)
(
    // Inputs
    clk_i, reset_i,
    rs_allocate_i,
    pc_i,
    prs1_addr_i, prs2_addr_i, prd_addr_i,
    prs1_valid_i, prs2_valid_i,
    alu_valid_i, mul_valid_i, lsu_valid_i,
    cdb_en_i, cdb_tag_i,
    // Outputs
    rs_free_o, pc_o, inst_o,
    prs1_addr_o, prs2_addr_o, prd_addr_o,
    alu_request_o, mul_request_o, lsu_request_o
);
    // ----- Input & Output Ports -----
    // Inputs
    input clk_i;
    input reset_i;
    input rs_allocate_i;  // allocate request
    input [31:0] pc_i;
    input [31:0] inst_i;
    // Rs & Rd addr
    input [4:0] prs1_addr_i;
    input [4:0] prs2_addr_i;
    input [4:0] prd_addr_i;
    // The availability of the source registers
    input prs1_valid_i;
    input prs2_valid_i;
    // The availability of the FU
    input alu_valid_i;
    input mul_valid_i;
    input lsu_valid_i;
    // CDB updates
    input cdb_en_i;
    input [4:0] cdb_tag_i;

    // Outputs
    output reg rs_free_o;
    output reg [31:0] pc_o;
    output reg [31:0] inst_o;
    // Rs & Rd addr
    output reg [4:0] prs1_addr_o;
    output reg [4:0] prs2_addr_o;
    output reg [4:0] prd_addr_o;
    // FU allocated
    output reg alu_request_o;
    output reg mul_request_o;
    output reg lsu_request_o;

    // ----- Reg/wire Initialization -----
    wire [1:0] rs_idx_issued;

    // For each entry:
    wire [RS_SIZE-1:0] entry_free;
    wire [RS_SIZE-1:0] alu_ready; 
    wire [RS_SIZE-1:0] lsu_ready; 
    wire [RS_SIZE-1:0] mul_ready; 

    wire [31:0] rs_inst [0:RS_SIZE-1]; 
    wire [31:0] rs_pc [0:RS_SIZE-1]; 
    wire [4:0] rs_rs1_addr [0:RS_SIZE-1]; 
    wire [4:0] rs_rs2_addr [0:RS_SIZE-1];
    wire [4:0] rs_rd_addr  [0:RS_SIZE-1];

    //reg entry_en

    assign rs_free_o = | entry_free;
    assign alu_request_o= | alu_ready;
    assign lsu_request_o= | lsu_ready;
    assign mul_request_o= | mul_ready;

    assign pc_o = rs_pc[rs_idx_issued];
    assign inst_o = rs_inst[rs_idx_issued];
    assign prs1_addr_o = rs_rs1_addr[rs_idx_issued];
    assign prs2_addr_o = rs_rs2_addr[rs_idx_issued];
    assign prd_addr_o = rs_rd_addr[rs_idx_issued];

    // Priority Encoder


    // ----- Generate Reservation Station Entries -----
    genvar i;
    generate
        for(i = 0; i < RS_SIZE; i = i + 1) begin
            rs_entry entry (
                // Inputs
                .clk_i(clk_i), 
                .reset_i(reset_i),
                .entry_en_i(), 
                .rs_entry_sel(),
                .prs1_addr_i(prs1_addr_i), 
                .prs2_addr_i(prs2_addr_i), 
                .prd_addr_i(prd_addr_i),
                .prs1_valid_i(prs1_valid_i), 
                .prs2_valid_i(prs1_valid_i),
                .alu_valid_i(alu_valid_i), 
                .mul_valid_i(mul_valid_i), 
                .lsu_valid_i(lsu_valid_i),
                // Outputs
                .entry_free_o(entry_free[i]),
                .alu_ready_o(alu_ready[i]), 
                .lsu_ready_o(lsu_ready[i]), 
                .mul_ready_o(mul_ready[i]),
                .inst_o(rs_inst[i]),
                .prs1_addr_o(rs_rs1_addr[i]), 
                .prs2_addr_o(rs_rs2_addr[i]), 
                .prd_addr_o(rs_rd_addr[i]),
                .rob_idx_o()
            );
        end
    endgenerate

endmodule

module rs_entry (
    // Inputs
    clk_i, reset_i,
    entry_en_i,  // allocation
    rs_entry_sel,  // execusion
    prs1_addr_i, prs2_addr_i, prd_addr_i,
    prs1_valid_i, prs2_valid_i,
    alu_valid_i, mul_valid_i, lsu_valid_i,
    // Outputs
    entry_free_o,
    alu_ready_o, lsu_ready_o, mul_ready_o,
    inst_o,
    prs1_addr_o, prs2_addr_o, prd_addr_o,
    rob_idx_o
);
    // ----- Input & Output Ports -----
    // Inputs
    input clk_i;
    input reset_i;
    input entry_en_i;
    input rs_entry_sel;
    input [31:0] inst_i;
    // Rs & Rd addr
    input [4:0] prs1_addr_i;
    input [4:0] prs2_addr_i;
    input [4:0] prd_addr_i;
    // The availability of the source registers
    input prs1_valid_i;
    input prs2_valid_i;
    // The availability of the FU
    input alu_valid_i;
    input mul_valid_i;
    input lsu_valid_i;
    // CDB updates
    input cdb_en_i;
    input [4:0] cdb_tag_i;  // basically the register index for single core

    // Outputs
    output reg entry_free_o;  // taken - 0; free - 1
    output reg alu_ready_o;
    output reg lsu_ready_o;
    output reg mul_ready_o;
    output reg [31:0] inst_o;
    // Rs & Rd addr
    output reg [4:0] prs1_addr_o;
    output reg [4:0] prs2_addr_o;
    output reg [4:0] prd_addr_o;
    output reg prs1_ready_o;
    output reg prs2_ready_o;
    // ROB
    output reg [4:0] rob_idx_o;

    // ----- Reg/wire Initialization -----
    wire ready;  // ready to pass to FUs
    wire cdb_prs1_valid;
    wire cdb_prs2_valid;
    reg prs1_ready;
    reg prs2_ready;

    assign ready = !(entry_free_o) & prs1_ready_o & prs2_ready_o;
	assign lsu_ready_o = ready;
  	assign mul_ready_o = ready;
  	assign alu_ready_o = ready; 
    assign cdb_prs1_valid = cdb_en_i && (cdb_tag_i == prs1_addr_o);  // rs1 is updated
    assign cdb_prs2_valid = cdb_en_i && (cdb_tag_i == prs2_addr_o);  // rs2 is updated

    always @(posedge clk_i) begin
        if (reset_i) begin
            entry_free_o <= 1'b0;
            inst_o <= 32'b0;
            prs1_addr_o <= 4'b0;
            prs2_addr_o <= 4'b0;
            prd_addr_o <= 4'b0;
            prs1_ready <= 1'b0;
            prs2_ready <= 1'b0;
        end
        else if (entry_en_i) begin  // allocated new entry
            entry_free_o <= 1'b0;  // entry no longer free
            inst_o <= inst_i;
            prs1_addr_o <= prs1_addr_i;
            prs2_addr_o <= prs2_addr_i;
            prd_addr_o <= prd_addr_i;
            prs1_ready <= prs1_valid_i;
            prs2_ready <= prs2_valid_i;
        end
        else if (!entry_free_o) begin  // still there - updates
            entry_free_o <= entry_free_o & rs_entry_sel;
            inst_o <= inst_o;
            prs1_addr_o <= prs1_addr_o;
            prs2_addr_o <= prs2_addr_o;
            prd_addr_o <= prd_addr_o;
            prs1_ready <= prs1_ready | cdb_prs1_valid;
            prs2_ready <= prs2_ready | cdb_prs2_valid;
        end
        else begin end
    end

endmodule