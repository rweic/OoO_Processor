module toplevel #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // CPU - DMEM
    wire [WIDTH-1:0] dmem_rdata;
    wire dmem_w_en;
    wire [WIDTH-1:0] dmem_wdata;
    wire [5:0] dmem_addr;

    cpu cpu0 (
        .clk(clk), 
        .reset(reset), 
        .dmem_rdata(dmem_rdata), 
        .dmem_w_en(dmem_w_en),
        .dmem_wdata(dmem_wdata), 
        .dmem_addr(dmem_addr));

    // Data Memory
    dcache dcache0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(dmem_w_en), 
        .wdata(dmem_wdata), 
        .raddr(dmem_addr), 
        .waddr(dmem_addr),
        .rdata(dmem_rdata));

endmodule