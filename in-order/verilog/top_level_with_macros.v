module toplevel #(parameter WIDTH = 32, parameter INST_LEN = 32, parameter ADDR_LEN = 32) (
    clk, reset
);
    input clk, reset;

    // CPU - DMEM
    wire [WIDTH-1:0] dmem_rdata;
    wire dmem_w_en;
    wire [WIDTH-1:0] dmem_wdata;
    wire [5:0] dmem_addr;

    // CPU - IMEM
    wire [INST_LEN-1:0] instruction_if;
    wire [WIDTH-1:0] pc_if;

    cpu cpu0 (
        .clk(clk), 
        .reset(reset), 
        .dmem_rdata(dmem_rdata), 
        .dmem_w_en(dmem_w_en),
        .dmem_wdata(dmem_wdata), 
        .dmem_addr(dmem_addr),
        .instruction_if(instruction_if), 
        .pc_if(pc_if));

    // Data Memory
    dmem dcache0 (
        .clk0(clk),
				.csb0(1'b0),
				.addr0(dmem_addr), //write address
				.wmask0(dmem_w_en), //????
				.din0(dmem_wdata), //write data
				.clk1(clk),
				.addr1(dmem_addr), // read addr
				.dout1(dmem_rdata)  // read data

       /* .w_en(dmem_w_en), 
        .wdata(dmem_wdata), 
        .raddr(dmem_addr), 
        .waddr(dmem_addr),
        .rdata(dmem_rdata)); */

    // Instruction Memory
    imem instruction_memory(
				.clk0(clk),
				.csb0(1'b0),
				.web0(1'b1),
				.addr0(pc_if),
				.din0(32'b0),
				.dout0(instruction_if)
			/*
        .addr(pc_if),
        .data(instruction_if)
			*/
    );

endmodule
