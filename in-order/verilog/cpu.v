module cpu #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset, 
    dmem_rdata, dmem_w_en, dmem_wdata, dmem_addr,
    instruction_if, pc_if
);
    input clk, reset;

    // dmem
    input [WIDTH-1:0] dmem_rdata;
    output dmem_w_en;
    output [WIDTH-1:0] dmem_wdata;
    output [5:0] dmem_addr;

    // imem
    input [INST_LEN-1:0] instruction_if;
    output [WIDTH-1:0] pc_if;
  
    // Internal Signals
    
    // Hazard Detect
    wire hazard_flag;
    wire [31:0] regfile_o [0:31];
    wire StallFetch;
    wire StallDecode;
		wire muldiv_hazard;
    
    // IF stage
    // wire [WIDTH-1:0] pc_if;

    // ID stage
    wire [WIDTH-1:0] pc_id;
    wire [INST_LEN-1:0] instruction_id;
    wire [4:0] rs1_addr, rs2_addr;  //temp value
    wire [WIDTH-1:0] rs1_data, rs2_data;    // temp value
		wire StallDecode_i;

    // EX stage
    wire [WIDTH-1:0] pc_ex;
    wire [4:0] rd_addr_ex;
    wire [WIDTH-1:0] rs1_data_ex, rs2_data_ex;
    wire rf_w_en_ex;
    wire [1:0] opsel1, opsel2;
    wire [1:0] wbsel_ex;
    wire [3:0] alu_func;
    wire mem_w_en_ex;
    wire load_flag_ex;

    // MEM stage
    wire [WIDTH-1:0] pc_mem;
    wire [4:0] rd_addr_mem;
    wire rf_w_en_mem;
    wire [WIDTH-1:0] alu_out_mem;
    wire [WIDTH-1:0] imm_mem;
    wire [1:0] wbsel_mem;
    wire mem_w_en_mem;
    wire [WIDTH-1:0] rs2_data_mem;

    // WB stage
    wire [WIDTH-1:0] pc_wb;
    wire [4:0] rd_addr_wb;
    wire rf_w_en_wb;
    wire [WIDTH-1:0] alu_out_wb;
    wire [WIDTH-1:0] rf_wdata_wb;
    wire [WIDTH-1:0] load_data_wb;
    wire [WIDTH-1:0] imm_wb;
    wire [1:0] wbsel_wb;

    // Branch
    wire [1:0] pcsel;
    wire [ADDR_LEN-1:0] br_tar;


    assign dmem_w_en = mem_w_en_mem;
    assign dmem_wdata = rs2_data_mem;
    assign dmem_addr = alu_out_mem[7:2];

    // Hazard Detection
    hazard_detect hazard_detect0 (
        .SourceReg1Dec(rs1_addr),
        .SourceReg2Dec(rs2_addr),
        //.SourceReg1Exec(rs1_data_ex),
        //.SourceReg2Exec(rs2_data_ex),
        .DestRegExec(rd_addr_ex),
        .DestRegMem(rd_addr_mem),
        .DestRegWriteBack(rd_addr_wb),
        .RegisterWriteMem(rf_w_en_mem),
        .RegisterWriteWriteBack(rf_w_en_wb),
        .ResultSourceExec0(load_flag_ex),
        .ProgramCounterSourceExec(pcsel[0]),
        //.ForwardingReg1Exec(),  // Update with appropriate signal
        //.ForwardingReg2Exec(),  // Update with appropriate signal
        .StallDecode_o(StallDecode),  // Update with appropriate signal
        .StallFetch_o(StallFetch),  // Update with appropriate signal
        .muldiv_hazard_i(muldiv_hazard)
    );
    
    // Instruction Fetch
    fetch fetch0 (
        .clk(clk),
        .reset(reset),
        .pcsel(pcsel),
        .br_dest(br_tar),
        .instr_if(instruction_if), 
        .pc_if(pc_if),
        .pc_o(pc_id),
        .instr_o(instruction_id),
        .StallFetch_i(StallFetch));


    // Instruction Decode
    decode decode0 (
        // Inputs
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_id), 
        .inst(instruction_id), 
        .rs1_value_i(rs1_data), 
        .rs2_value_i(rs2_data),
        .pc_o(pc_ex), 
        .alu_func(alu_func), // is this an output?
        .opsel1(opsel1), 
        .opsel2(opsel2), 
        .wbsel(wbsel_ex),
        // Outputs
        .rs1_addr(rs1_addr), 
        .rs2_addr(rs2_addr), 
        .rd_addr(rd_addr_ex), 
        .rs1_value_o(rs1_data_ex), 
        .rs2_value_o(rs2_data_ex),
        .rf_w_en(rf_w_en_ex),
        .mem_w_en(mem_w_en_ex), 
        .imm(imm_mem),
        .load_flag_o(load_flag_ex),
        .pcsel(pcsel),
        .branch_tar(br_tar),
        .StallDecode_i(StallDecode_i),// this should be deleted
        .muldiv_hazard(muldiv_hazard) //output
    );

    // Regfile
    regfile regfile0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(rf_w_en_wb && ~load_flag_ex), // should be load_flag_wb?
        .ra_addr(rs1_addr), 
        .rb_addr(rs2_addr), 
        .rd_addr(rd_addr_wb),
        .w_data(rf_wdata_wb),
        .ra_value(rs1_data), 
        .rb_value(rs2_data),
        .regfile_o(regfile_o)); // for testing

    // Execution
    execute exec0 (
        // Inputs
        .clk(clk), 
        .reset(reset),
				.funct3(instruction_id[14:12]),
				.funct7(instruction_id[31:25]), 
        .opsel1(opsel1),
        .opsel2(opsel2),
        .alu_func(alu_func),
        .rs1_data_i(rs1_data_ex), 
        .rs2_data_i(rs2_data_ex), 
        .rd_addr_i(rd_addr_ex),
        .rf_w_en_i(rf_w_en_ex),
        .wbsel_i(wbsel_ex),
        .mem_w_en_i(mem_w_en_ex),
        // Outputs
        .imm(imm_mem),
        .pc_i(pc_ex), 
        .pc_o(pc_mem), 
        .alu_out(alu_out_mem),
        .rd_addr_o(rd_addr_mem),
        .rf_w_en_o(rf_w_en_mem),
        .wbsel_o(wbsel_mem),
        .mem_w_en_o(mem_w_en_mem),
        .rs2_data_o(rs2_data_mem));

    // Memory Access
    memory_access memaccess0 (
        // Inputs
        .clk(clk), 
        .reset(reset), 
        .pc_i(pc_mem), 
        .alu_result_i(alu_out_mem), 
        .mem_r_i(dmem_rdata), 
        .rd_addr_i(rd_addr_mem),
        .rf_w_en_i(rf_w_en_mem),
        .imm_i(imm_mem),
        .wbsel_i(wbsel_mem),
        // Outputs
        .pc_o(pc_wb), 
        .alu_result_o(alu_out_wb), 
        .load_data(load_data_wb),
        .rd_addr_o(rd_addr_wb),
        .rf_w_en_o(rf_w_en_wb),
        .imm_o(imm_wb),
        .wbsel_o(wbsel_wb));


    // Write back
    writeback wb0 (
        // Inputs
        .wbsel(wbsel_wb), 
        .alu_result(alu_out_wb), 
        .dmem_result(load_data_wb), 
        .imm(imm_wb),
        .pc_i(pc_wb), 
        // Outputs
        .rf_wdata(rf_wdata_wb));


endmodule
