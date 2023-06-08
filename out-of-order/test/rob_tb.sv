module rob_tb();
    // regs
    reg clk_i;
    reg reset_i;
    // Request indicators
    reg allocate_req_i;  // allocate request
    reg update_req_alu_i;  // update request
    reg update_req_lsu_i;  // update request
    reg update_req_mul_i;  // update request
    // Values (allocation)
    reg [4:0] prd_addr_i;
    reg [31:0] pc_i;
    reg [31:0] inst_i;
    // Values (update)
    reg [4:0] rob_idx_alu_i;
    reg [31:0] reg_value_alu_i;
    reg [4:0] rob_idx_lsu_i;
    reg [31:0] reg_value_lsu_i;
    reg [4:0] rob_idx_mul_i;
    reg [31:0] reg_value_mul_i;

    // wires
    // Indicating the status of the rob
    wire empty_o;
    wire full_o;
    // Allocated rob idx
    wire [4:0] rob_idx_o;
    // wire data at commitment
    wire commitment_valid_o;
    wire [31:0] inst_committed_o;
    wire [31:0] pc_committed_o;
    wire [4:0]  prd_addr_committed_o;
    wire [31:0] prd_value_committed_o;

    rob rob0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
       `ifndef PRE_SYN
    	    $sdf_annotate("rob.syn.sdf", cpu0);
    	`endif
        //$vcdpluson;
        $fsdbDumpfile("rob.fsdb");
        $fsdbDumpvars(0, rob_tb);
        $dumpfile("rob.vcd");
	    $dumpvars();
        reset_i = 1'b1; 
        allocate_req_i = 1'b0; update_req_alu_i = 1'b0; update_req_lsu_i = 1'b0; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd0; pc_i = 'h0; inst_i = 'h0;
        rob_idx_alu_i = 'h0; reg_value_alu_i = 'h0;
        rob_idx_lsu_i = 'h0; reg_value_lsu_i = 'h0;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        @(posedge clk_i); @(posedge clk_i);

        reset_i = 1'b0; @(posedge clk_i);

        // Allocate rob idx 0
        allocate_req_i = 1'b1; update_req_alu_i = 1'b0; update_req_lsu_i = 1'b0; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd5; pc_i = 'h0; inst_i = 'h5a000093;
        rob_idx_alu_i = 'h0; reg_value_alu_i = 'h0;
        rob_idx_lsu_i = 'h0; reg_value_lsu_i = 'h0;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        @(posedge clk_i);

        // Allocate rob idx 1
        allocate_req_i = 1'b1; update_req_alu_i = 1'b0; update_req_lsu_i = 1'b0; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd3; pc_i = 'h4; inst_i = 'h22600113;
        rob_idx_alu_i = 'h0; reg_value_alu_i = 'h0;
        rob_idx_lsu_i = 'h0; reg_value_lsu_i = 'h0;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        @(posedge clk_i);

        // Allocate rob idx 2, update rob idx 0
        allocate_req_i = 1'b1; update_req_alu_i = 1'b1; update_req_lsu_i = 1'b0; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd6; pc_i = 'h8; inst_i = 'h0220e2b3;
        rob_idx_alu_i = 'h0; reg_value_alu_i = 'h0;
        rob_idx_lsu_i = 'h0; reg_value_lsu_i = 'h0;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        @(posedge clk_i);

        // Allocate rob idx 3, update rob idx 2
        allocate_req_i = 1'b1; update_req_alu_i = 1'b1; update_req_lsu_i = 1'b0; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd4; pc_i = 'hc; inst_i = 'h00010093;
        rob_idx_alu_i = 'h2; reg_value_alu_i = 'h0;
        rob_idx_lsu_i = 'h0; reg_value_lsu_i = 'h0;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        @(posedge clk_i);

        // Allocate rob idx 4, update rob idx 1 & rob idx 3
        allocate_req_i = 1'b1; update_req_alu_i = 1'b1; update_req_lsu_i = 1'b1; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd1; pc_i = 'h10; inst_i = 'h00028113;
        rob_idx_alu_i = 'h1; reg_value_alu_i = 'h5;
        rob_idx_lsu_i = 'h3; reg_value_lsu_i = 'h4;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        @(posedge clk_i);
        
        // No operation
        allocate_req_i = 1'b0; update_req_alu_i = 1'b0; update_req_lsu_i = 1'b0; update_req_mul_i = 1'b0; 
        prd_addr_i = 'd0; pc_i = 'h0; inst_i = 'h0;
        rob_idx_alu_i = 'h0; reg_value_alu_i = 'h0;
        rob_idx_lsu_i = 'h0; reg_value_lsu_i = 'h0;
        rob_idx_mul_i = 'h0; reg_value_mul_i = 'h0;
        
        @(posedge clk_i); @(posedge clk_i);
        @(posedge clk_i); @(posedge clk_i);
        $finish;
    end

endmodule
