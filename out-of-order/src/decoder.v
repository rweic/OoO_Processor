/* Decoder */
module decoder (
    // Inputs
    inst_i,
    // Outputs
    alu_o, lsu_o, muldiv_o, br_o
    );
    // Inputs
    input [31:0] inst_i;
    // Outputs
    output alu_o;
    output lsu_o;
    output muldiv_o;
    output br_o;
    // Any other outputs that might needed

    reg [3:0] resource;

    wire [6:0] opcode = inst_i[6:0];

/*  All decoding fields that could probably be used later
    wire[4:0] rs1_addr = inst_i[19:15];
    wire[4:0] rs2_addr = inst_i[24:20];
    wire[4:0] rd_addr = inst_i[11:7];
    wire [6:0] opcode = inst_i[6:0];
    wire [2:0] funct3 = inst_i[14:12];
    wire [6:0] funct7 = inst_i[31:25];
    wire [31:0] imm_i = {{20{inst_i[31]}}, inst_i[31:20]};
    wire [31:0] imm_u = {inst_i[31:12], 12'b0};
    // wire [11:0] imm_s = {inst_i[31:25], inst_i[11:7]};
    wire [31:0] imm_b = {{20{inst_i[31]}}, inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
    wire [31:0] imm_j = {{12{inst_i[31]}}, inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};*/

    assign {alu_o, lsu_o, muldiv_o, br_o} = resource;

    // Resource pre-allocate
    always @(*) begin
        case(opcode)
            // For itype, rtype: resource used is alu
            // rs1 & imm_i -> rd
            `OP_ITYPE: begin
                resource = 'b1000;
            end
            // rs1 & rs2 -> rd
            `OP_RTYPE: begin
                resource = 'b1000;
            end
            // imm_u -> rd
            `OP_LUI: begin 
                resource = 'b1000;
            end
            // pc + imm_u -> rd
            `OP_AUIPC: begin 
                resource = 'b1000;
            end

            // For load and store: 
            // jump to pc + imm_j
            // pc + 4 -> rd
            `OP_JAL: begin 
            end
            // jump to rs1 + imm_i
            // pc + 4 -> rd
            `OP_JALR: begin 
            end
            // QUESTION: what would happen if there's no branch predictor? always assume taken?
            // cond: compare rs1 rs2
            // if take: jump to pc + imm_b
            `OP_BRANCH: begin
            end

            // For load and store: resource used is lsu
            // funct3 needed to identify the length of that
            // Add an additional signal to indicate if it's read/write
            `OP_LOAD: begin
                // mem[rs1+imm_i] -> rd
                // LW - 32 bits, LH - 16 bits signed, LHU - 16 bits zero ext
                resource = 'b0100;
            end
            `OP_STORE: begin 
                // rs2 -> mem[rs1+imm_s]
                // SW, SH, SB  - 32, 16, 8 bits
                resource = 'b0100;
            end
            default: begin end
        endcase
    end


endmodule