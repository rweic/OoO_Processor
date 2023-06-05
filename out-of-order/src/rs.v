/* Reservation Station
 * This module should include the space for holding instructions that hasn't dispatched
 *
 * Priority Rules: release the oldest instr that's ready
 */
module rs #(
    parameter RS_SIZE = 4
)
(
    // Inputs
    clk_i, reset_i,
    rs_allocate_i,
    pc_i, inst_i,
    prs1_addr_i, prs2_addr_i, prd_addr_i,
    prs1_valid_i, prs2_valid_i,
    alu_request_i, lsu_request_i, mul_request_i,
    alu_valid_i, mul_valid_i, lsu_valid_i,
    cdb_en_i, cdb_tag_i,
    // Outputs
    alu_free_o, lsu_free_o, mul_free_o,
    alu_request_o, alu_pc_o, alu_inst_o, alu_prs1_addr_o, alu_prs2_addr_o, alu_prd_addr_o,
    lsu_request_o, lsu_pc_o, lsu_inst_o, lsu_prs1_addr_o, lsu_prs2_addr_o, lsu_prd_addr_o,
    mul_request_o, mul_pc_o, mul_inst_o, mul_prs1_addr_o, mul_prs2_addr_o, mul_prd_addr_o
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
    // Input type of inst
    input alu_request_i;
    input lsu_request_i;
    input mul_request_i;
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
    // Space available to add more, if it's 0 stall the fetch/decode
    output reg alu_free_o;
    output reg lsu_free_o;
    output reg mul_free_o;

    // ALU allocated
    output reg alu_request_o;
    output reg [31:0] alu_pc_o;
    output reg [31:0] alu_inst_o;
    output reg [4:0] alu_prs1_addr_o;
    output reg [4:0] alu_prs2_addr_o;
    output reg [4:0] alu_prd_addr_o;

    // MUL allocated
    output reg mul_request_o;
    output reg [31:0] mul_pc_o;
    output reg [31:0] mul_inst_o;
    output reg [4:0] mul_prs1_addr_o;
    output reg [4:0] mul_prs2_addr_o;
    output reg [4:0] mul_prd_addr_o;

    //  allocated
    output reg lsu_request_o;
    output reg [31:0] lsu_pc_o;
    output reg [31:0] lsu_inst_o;
    output reg [4:0] lsu_prs1_addr_o;
    output reg [4:0] lsu_prs2_addr_o;
    output reg [4:0] lsu_prd_addr_o;

    // ----- Reg/wire Initialization -----
    wire [1:0] alu_idx_issued;
    wire [1:0] lsu_idx_issued;
    wire [1:0] mul_idx_issued;

    // For each entry:
    // Free signal
    wire [RS_SIZE-1:0] alu_entry_free;
    wire [RS_SIZE-1:0] lsu_entry_free;
    wire [RS_SIZE-1:0] mul_entry_free;

    // Ready signal for each entry
    wire [RS_SIZE-1:0] alu_ready; 
    wire [RS_SIZE-1:0] lsu_ready; 
    wire [RS_SIZE-1:0] mul_ready; 

    // ALU
    wire [RS_SIZE-1:0] alu_entry_allocate;
    wire [RS_SIZE-1:0] alu_entry_sel;
    wire [31:0] alu_inst [0:RS_SIZE-1]; 
    wire [31:0] alu_pc [0:RS_SIZE-1]; 
    wire [4:0] alu_rs1_addr [0:RS_SIZE-1]; 
    wire [4:0] alu_rs2_addr [0:RS_SIZE-1];
    wire [4:0] alu_rd_addr  [0:RS_SIZE-1];

    // MUL
    wire [RS_SIZE-1:0] mul_entry_allocate;
    wire [RS_SIZE-1:0] mul_entry_sel;
    wire [31:0] mul_inst [0:RS_SIZE-1]; 
    wire [31:0] mul_pc [0:RS_SIZE-1]; 
    wire [4:0] mul_rs1_addr [0:RS_SIZE-1]; 
    wire [4:0] mul_rs2_addr [0:RS_SIZE-1];
    wire [4:0] mul_rd_addr  [0:RS_SIZE-1];

    // LSU
    wire [RS_SIZE-1:0] lsu_entry_allocate;
    wire [RS_SIZE-1:0] lsu_entry_sel;
    wire [31:0] lsu_inst [0:RS_SIZE-1]; 
    wire [31:0] lsu_pc [0:RS_SIZE-1]; 
    wire [4:0] lsu_rs1_addr [0:RS_SIZE-1]; 
    wire [4:0] lsu_rs2_addr [0:RS_SIZE-1];
    wire [4:0] lsu_rd_addr  [0:RS_SIZE-1];

    assign alu_request_o= | alu_entry_sel;
    assign lsu_request_o= | lsu_entry_sel;
    assign mul_request_o= | mul_entry_sel;

    assign alu_free_o = | alu_entry_free;
    assign lsu_free_o = | lsu_entry_free;
    assign mul_free_o = | mul_entry_free;

    // ALU
    assign alu_pc_o = alu_pc[alu_idx_issued];
    assign alu_inst_o = alu_inst[alu_idx_issued];
    assign alu_prs1_addr_o = alu_rs1_addr[alu_idx_issued];
    assign alu_prs2_addr_o = alu_rs2_addr[alu_idx_issued];
    assign alu_prd_addr_o = alu_rd_addr[alu_idx_issued];

    // MUL
    assign mul_pc_o = mul_pc[mul_idx_issued];
    assign mul_inst_o = mul_inst[mul_idx_issued];
    assign mul_prs1_addr_o = mul_rs1_addr[mul_idx_issued];
    assign mul_prs2_addr_o = mul_rs2_addr[mul_idx_issued];
    assign mul_prd_addr_o = mul_rd_addr[mul_idx_issued];

    // LSU
    assign lsu_pc_o = lsu_pc[lsu_idx_issued];
    assign lsu_inst_o = lsu_inst[lsu_idx_issued];
    assign lsu_prs1_addr_o = lsu_rs1_addr[lsu_idx_issued];
    assign lsu_prs2_addr_o = lsu_rs2_addr[lsu_idx_issued];
    assign lsu_prd_addr_o = lsu_rd_addr[lsu_idx_issued];

    // Priority
    priority_select ps_alu (
        .allocate_i(alu_request_i), 
        .resource_valid_i(alu_entry_free),
        .entry_allocate_o(alu_entry_allocate)
    );

    priority_issue pi_alu (
        .clk_i(clk_i), 
        .reset_i(reset_i),
        .allocate_i(alu_request_i), 
        .resource_valid_i(alu_entry_free), 
        .entry_ready_i(alu_ready),
        .entry_sel_o(alu_entry_sel),
        .idx_issued_o(alu_idx_issued)
    );

    priority_select ps_lsu (
        .allocate_i(lsu_request_i), 
        .resource_valid_i(lsu_entry_free),
        .entry_allocate_o(lsu_entry_allocate)
    );

    priority_issue pi_lsu (
        .clk_i(clk_i), 
        .reset_i(reset_i),
        .allocate_i(lsu_request_i), 
        .resource_valid_i(lsu_entry_free), 
        .entry_ready_i(lsu_ready),
        .entry_sel_o(lsu_entry_sel),
        .idx_issued_o(lsu_idx_issued)
    );

    priority_select ps_mul (
        .allocate_i(mul_request_i), 
        .resource_valid_i(mul_entry_free),
        .entry_allocate_o(mul_entry_allocate)
    );

    priority_issue pi_mul (
        .clk_i(clk_i), 
        .reset_i(reset_i),
        .allocate_i(mul_request_i), 
        .resource_valid_i(mul_entry_free), 
        .entry_ready_i(mul_ready),
        .entry_sel_o(mul_entry_sel),
        .idx_issued_o(mul_idx_issued)
    );
    

    // ----- Generate Reservation Station Entries -----
    genvar i;

    // ALU
    generate
        for(i = 0; i < RS_SIZE; i = i + 1) begin
            rs_entry alu_entry (
                // Inputs
                .clk_i(clk_i), 
                .reset_i(reset_i),
                .entry_allocate_req_i(alu_request_i & alu_entry_allocate[i]), 
                .entry_sel_i(alu_entry_sel[i]),
                .pc_i(pc_i), 
                .inst_i(inst_i),
                .prs1_addr_i(prs1_addr_i), 
                .prs2_addr_i(prs2_addr_i), 
                .prd_addr_i(prd_addr_i),
                .prs1_valid_i(prs1_valid_i), 
                .prs2_valid_i(prs2_valid_i),
                .cdb_en_i(cdb_en_i), 
                .cdb_tag_i(cdb_tag_i),
                // Outputs
                .entry_free_o(alu_entry_free[i]),
                .ready_o(alu_ready[i]),
                .pc_o(alu_pc[i]),
                .inst_o(alu_inst[i]),
                .prs1_addr_o(alu_rs1_addr[i]), 
                .prs2_addr_o(alu_rs2_addr[i]), 
                .prd_addr_o(alu_rd_addr[i])
            );
        end
    endgenerate

    // MUL
    generate
        for(i = 0; i < RS_SIZE; i = i + 1) begin
            rs_entry mul_entry (
                // Inputs
                .clk_i(clk_i), 
                .reset_i(reset_i),
                .entry_allocate_req_i(rs_allocate_i & mul_entry_allocate[i]), 
                .entry_sel_i(mul_entry_sel[i]),
                .pc_i(pc_i), 
                .inst_i(inst_i),
                .prs1_addr_i(prs1_addr_i), 
                .prs2_addr_i(prs2_addr_i), 
                .prd_addr_i(prd_addr_i),
                .prs1_valid_i(prs1_valid_i), 
                .prs2_valid_i(prs2_valid_i),
                .cdb_en_i(cdb_en_i), 
                .cdb_tag_i(cdb_tag_i),
                // Outputs
                .entry_free_o(mul_entry_free[i]),
                .ready_o(mul_ready[i]),
                .pc_o(mul_pc[i]),
                .inst_o(mul_inst[i]),
                .prs1_addr_o(mul_rs1_addr[i]), 
                .prs2_addr_o(mul_rs2_addr[i]), 
                .prd_addr_o(mul_rd_addr[i])
            );
        end
    endgenerate

    // LSU
    generate
        for(i = 0; i < RS_SIZE; i = i + 1) begin
            rs_entry lsu_entry (
                // Inputs
                .clk_i(clk_i), 
                .reset_i(reset_i),
                .entry_allocate_req_i(rs_allocate_i & lsu_entry_allocate[i]), 
                .entry_sel_i(lsu_entry_sel[i]),
                .pc_i(pc_i), 
                .inst_i(inst_i),
                .prs1_addr_i(prs1_addr_i), 
                .prs2_addr_i(prs2_addr_i), 
                .prd_addr_i(prd_addr_i),
                .prs1_valid_i(prs1_valid_i), 
                .prs2_valid_i(prs2_valid_i),
                .cdb_en_i(cdb_en_i), 
                .cdb_tag_i(cdb_tag_i),
                // Outputs
                .entry_free_o(lsu_entry_free[i]),
                .ready_o(lsu_ready[i]),
                .pc_o(lsu_pc[i]),
                .inst_o(lsu_inst[i]),
                .prs1_addr_o(lsu_rs1_addr[i]), 
                .prs2_addr_o(lsu_rs2_addr[i]), 
                .prd_addr_o(lsu_rd_addr[i])
            );
        end
    endgenerate

endmodule

module rs_entry (
    // Inputs
    clk_i, reset_i,
    entry_allocate_req_i, 
    entry_sel_i,  // execusion
    pc_i, inst_i,
    prs1_addr_i, prs2_addr_i, prd_addr_i,
    prs1_valid_i, prs2_valid_i,
    cdb_en_i, cdb_tag_i,
    // Outputs
    entry_free_o,
    ready_o,
    pc_o, inst_o,
    prs1_addr_o, prs2_addr_o, prd_addr_o
);
    // ----- Input & Output Ports -----
    // Inputs
    input clk_i;
    input reset_i;
    input entry_allocate_req_i;
    input entry_sel_i;
    input [31:0] pc_i;
    input [31:0] inst_i;
    // Rs & Rd addr
    input [4:0] prs1_addr_i;
    input [4:0] prs2_addr_i;
    input [4:0] prd_addr_i;
    // The availability of the source registers
    input prs1_valid_i;
    input prs2_valid_i;
    // CDB updates
    input cdb_en_i;
    input [4:0] cdb_tag_i;  // basically the register index for single core

    // Outputs
    output reg entry_free_o;  // taken - 0; free - 1
    output reg ready_o;
    output reg [31:0] pc_o;
    output reg [31:0] inst_o;
    // Rs & Rd addr
    output reg [4:0] prs1_addr_o;
    output reg [4:0] prs2_addr_o;
    output reg [4:0] prd_addr_o;

    // ----- Reg/wire Initialization -----
    reg cdb_prs1_valid;
    reg cdb_prs2_valid;
    reg prs1_ready;
    reg prs2_ready;

    reg entry_free_reg;
    reg [31:0] pc_reg;
    reg [31:0] inst_reg;
    reg [4:0] prs1_addr_reg;
    reg [4:0] prs2_addr_reg;
    reg [4:0] prd_addr_reg;
    reg prs1_ready_reg;
    reg prs2_ready_reg;

    assign ready_o = prs1_ready & prs2_ready & (~entry_free_o);
    assign cdb_prs1_valid = cdb_en_i && (cdb_tag_i == prs1_addr_o);  // rs1 is updated
    assign cdb_prs2_valid = cdb_en_i && (cdb_tag_i == prs2_addr_o);  // rs2 is updated

    always @(*) begin
        if (entry_allocate_req_i) begin  // allocated new entry
            entry_free_reg = 1'b0;  // entry no longer free
            pc_reg = pc_i;
            inst_reg = inst_i;
            prs1_addr_reg = prs1_addr_i;
            prs2_addr_reg = prs2_addr_i;
            prd_addr_reg = prd_addr_i;
            prs1_ready_reg = prs1_valid_i;
            prs2_ready_reg = prs2_valid_i;
        end
        else if (!entry_free_o) begin  // update the reg_state
            entry_free_reg = entry_free_o | entry_sel_i;  // if entry is selcted_entry free should be set to zero
            pc_reg = pc_o;
            inst_reg = inst_o;
            prs1_addr_reg = prs1_addr_o;
            prs2_addr_reg = prs2_addr_o;
            prd_addr_reg = prd_addr_o;
            prs1_ready_reg = prs1_ready | cdb_prs1_valid;
            prs2_ready_reg = prs2_ready | cdb_prs2_valid;
        end
        else begin  // entry_free_o == 1 & not allocated
            entry_free_reg = entry_free_o | entry_sel_i;
            pc_reg = pc_o;
            inst_reg = inst_o;
            prs1_addr_reg = 'b0;
            prs2_addr_reg = 'b0;
            prd_addr_reg = 'b0;
            prs1_ready_reg = 1'b0;
            prs2_ready_reg = 1'b0;
        end
    end

    always @(posedge clk_i) begin
        if (reset_i) begin
            entry_free_o <= 1'b1;
            pc_o <= 32'b0;
            inst_o <= 32'b0;
            prs1_addr_o <= 4'b0;
            prs2_addr_o <= 4'b0;
            prd_addr_o <= 4'b0;
            prs1_ready <= 1'b0;
            prs2_ready <= 1'b0;
        end
        else begin
            entry_free_o <= entry_free_reg;  // entry no longer free
            pc_o <= pc_reg;
            inst_o <= inst_reg;
            prs1_addr_o <= prs1_addr_reg;
            prs2_addr_o <= prs2_addr_reg;
            prd_addr_o <= prd_addr_reg;
            prs1_ready <= prs1_ready_reg;
            prs2_ready <= prs2_ready_reg;
        end
    end

endmodule