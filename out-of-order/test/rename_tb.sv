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
        reset_i = 1'b1;
        pc_i = 'h0; inst_valid_i = 'b0; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h0; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0;   #10
        reset_i = 1'b0; @(posedge clk_i);
        pc_i = 'h0; inst_valid_i = 'b1; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h1; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h4; inst_valid_i = 'b1; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h2; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h8; inst_valid_i = 'b1; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h3; cdb_en_i = 'h1; cdb_reg_addr_i = 'h1; @(posedge clk_i);
        pc_i = 'hc; inst_valid_i = 'b1; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h4; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h10; inst_valid_i = 'b1; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h5; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h10; inst_valid_i = 'b1; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h6; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);  
        pc_i = 'h14; inst_valid_i = 'b1; rs1_addr_i = 'h2; rs2_addr_i = 'h2; rd_addr_i = 'h2; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h18; inst_valid_i = 'b1; rs1_addr_i = 'h1; rs2_addr_i = 'h2; rd_addr_i = 'h1; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h1c; inst_valid_i = 'b1; rs1_addr_i = 'h4; rs2_addr_i = 'h4; rd_addr_i = 'h2; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h20; inst_valid_i = 'b1; rs1_addr_i = 'h3; rs2_addr_i = 'h2; rd_addr_i = 'h3; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h24; inst_valid_i = 'b1; rs1_addr_i = 'h6; rs2_addr_i = 'h6; rd_addr_i = 'h2; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h28; inst_valid_i = 'b1; rs1_addr_i = 'h5; rs2_addr_i = 'h2; rd_addr_i = 'h5; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
        pc_i = 'h2c; inst_valid_i = 'b0; rs1_addr_i = 'h0; rs2_addr_i = 'h0; rd_addr_i = 'h0; cdb_en_i = 'h0; cdb_reg_addr_i = 'h0; @(posedge clk_i);
         @(posedge clk_i);
         @(posedge clk_i);
        $finish;
    end

endmodule