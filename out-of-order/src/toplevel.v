module toplevel (
    // Inputs
    clk_i, reset_i
);
    // Inputs
    input clk_i;
    input reset_i;

    // imem
    wire [7:0] imem_addr_o;
    wire [31:0] imem_inst_i;

    // dmem
    wire dmem_csb_write;
    wire [3:0] dmem_wmask;
    wire [7:0] dmem_waddr;
    wire [31:0] dmem_din;
    wire dmem_csb_read;
    wire [7:0] dmem_raddr;
    wire [31:0] dmem_dout;
    
    core cpu0 (
        .clk_i(clk_i),
        .reset_i(reset_i),

        // imem
        .imem_addr_o(imem_addr_o),
        .imem_inst_i(imem_inst_i),

        // dmem
        .dmem_csb_write_o(dmem_csb_write),
        .dmem_wmask_o(dmem_wmask),
        .dmem_waddr_o(dmem_waddr),
        .dmem_din_o(dmem_din),
        .dmem_csb_read_o(dmem_csb_read),
        .dmem_raddr_o(dmem_raddr),
        .dmem_dout_i(dmem_dout)
    );

    imem imem (
        .clk0(clk_i), 
        .csb0(1'b0), 
        .web0(1'b1),
        .addr0(imem_addr_o),  // need to make this configurable later
        .din0('b0),
        .dout0(imem_inst_i)
    );

        // csb need to be 0 when read is enabled or write is enabled
    dmem dmem (
        // Port 0: Write
        .clk0(clk_i),
        .csb0(dmem_csb_write),
        .wmask0(dmem_wmask),
        .addr0(dmem_waddr),
        .din0(dmem_din),
        // Port 1: Read
        .clk1(clk_i),
        .csb1(dmem_csb_read),
        .addr1(dmem_waddr),
        .dout1(dmem_dout)
    );


endmodule