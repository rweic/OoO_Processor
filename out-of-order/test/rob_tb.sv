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

        @(posedge clk_i);
        reset_i = 1'b0; @(posedge clk_i);

        // test 1
        
        
        @(posedge clk_i);
        $finish;
    end

endmodule
