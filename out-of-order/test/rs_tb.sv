module rs_tb ();    // Inputs
    // Inputs
    reg clk_i;
    reg reset_i;
    reg rs_allocate_i;  // allocate request
    reg [31:0] pc_i;
    reg [31:0] inst_i;
    // Rs & Rd addr
    reg [4:0] prs1_addr_i;
    reg [4:0] prs2_addr_i;
    reg [4:0] prd_addr_i;
    // Input type of inst
    reg alu_request_i;
    reg lsu_request_i;
    reg mul_request_i;
    // The availability of the source registers
    reg prs1_valid_i;
    reg prs2_valid_i;
    // The availability of the FU
    reg alu_valid_i;
    reg mul_valid_i;
    reg lsu_valid_i;
    // CDB updates
    reg cdb_en_i;
    reg [4:0] cdb_tag_i;

    // Outputs
    // Space available to add more, if it's 0 stall the fetch/decode
    wire alu_free_o;
    wire lsu_free_o;
    wire mul_free_o;

    // ALU allocated
    wire alu_request_o;
    wire [31:0] alu_pc_o;
    wire [31:0] alu_inst_o;
    wire [4:0] alu_prs1_addr_o;
    wire [4:0] alu_prs2_addr_o;
    wire [4:0] alu_prd_addr_o;

    // MUL allocated
    wire mul_request_o;
    wire [31:0] mul_pc_o;
    wire [31:0] mul_inst_o;
    wire [4:0] mul_prs1_addr_o;
    wire [4:0] mul_prs2_addr_o;
    wire [4:0] mul_prd_addr_o;

    //  allocated
    wire lsu_request_o;
    wire [31:0] lsu_pc_o;
    wire [31:0] lsu_inst_o;
    wire [4:0] lsu_prs1_addr_o;
    wire [4:0] lsu_prs2_addr_o;
    wire [4:0] lsu_prd_addr_o;

    rs rs0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; 
        rs_allocate_i = 1'b0; pc_i = 'b0; inst_i = 'b0; prs1_addr_i = 'b0; prs2_addr_i = 'b0; prd_addr_i = 'b0; 
        prs1_valid_i = 'b0; prs2_valid_i = 'b0; alu_request_i = 1'b0; lsu_request_i = 1'b0; mul_request_i = 1'b0;
        alu_valid_i = 'b0; mul_valid_i = 'b0; lsu_valid_i = 'b0; 
        cdb_en_i = 'b0; cdb_tag_i = 'b0; @(posedge clk_i); 
        reset_i = 1'b0; @(posedge clk_i); 

        // 
        rs_allocate_i = 1'b1; pc_i = 'h0; inst_i = 'h0; prs1_addr_i = 'd2; prs2_addr_i = 'd3; prd_addr_i = 'd0; 
        prs1_valid_i = 'b0; prs2_valid_i = 'b0; alu_valid_i = 'b0; mul_valid_i = 'b0; lsu_valid_i = 'b0; 
        @(posedge clk_i); 


        @(posedge clk_i); 
        @(posedge clk_i); 
        $finish;
    end

endmodule