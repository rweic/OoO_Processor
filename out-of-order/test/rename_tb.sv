module rename_tb();
    reg clk_i, reset_i;
    reg [31:0] pc_i;
    // The register addr of inst being decoded
    reg inst_valid_i;
    reg [4:0] rs1_addr_i;
    reg [4:0] rs2_addr_i;
    reg [4:0] rd_addr_i;
    // Updates from common data bus
    reg cdb_en_i;
    reg [4:0] cdb_reg_addr_i;

    // Outputs
    wire [4:0] prs1_addr_o;
    wire [4:0] prs2_addr_o;
    wire [4:0] prd_addr_o;

    rename rename0 (.*);
    
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    initial begin
	    $dumpfile("uut.vcd");
	    $dumpvars();
        reset_i = 1'b1;  #10
        reset_i = 1'b0; 
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
        $finish;
    end

endmodule