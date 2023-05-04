/* Decoder */
module decoder (
    // Inputs
    inst_i,
    // Outputs
    alu_o, lsu_o, muldiv_o, br_o
    );
    input [31:0] inst_i;

    output alu_o;
    output lsu_o;
    output muldiv_o;
    output br_o;

	wire[4:0] rs1 = inst_i[19:15];
	wire[4:0] rs2 = inst_i[24:20];
    wire[4:0] rd = inst_i[11:7];
    wire [6:0] opcode = inst_i[6:0];
	wire [2:0] funct3 = inst_i[14:12];
	wire [6:0] funct7 = inst_i[31:25];
	wire [31:0] imm_i = {{20{inst_i[31]}}, inst_i[31:20]};
	wire [31:0] imm_u = {inst_i[31:12], 12'b0};
	// wire [11:0] imm_s = {inst_i[31:25], inst_i[11:7]};
    wire [31:0] imm_b = {{20{inst_i[31]}}, inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
    wire [31:0] imm_j = {{12{inst_i[31]}}, inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};

    // Resource pre-allocate
    always @(*) begin
        case (opcode)
            default: begin end
        endcase
    end




endmodule