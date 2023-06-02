module rs_tb ();
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
    wire rs_free_o;
    wire [31:0] pc_o;
    wire [31:0] inst_o;
    // Rs & Rd addr
    wire [4:0] prs1_addr_o;
    wire [4:0] prs2_addr_o;
    wire [4:0] prd_addr_o;
    // FU allocated
    wire alu_request_o;
    wire mul_request_o;
    wire lsu_request_o;

    rs rs0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1; rs_allocate_i = 1'b0; @(posedge clk_i); 
        reset_i = 1'b0; @(posedge clk_i); 
        $finish;
    end

endmodule