/* In-order 5-stage pipline processor testbench
 * Notes:
 * - tests all kinds of instructions in the RV32I instruction set
 * - tests for RAW hazard - with stall
 */
module top_level_no_macros_tb();

    reg clk, reset;

     // CPU - DMEM
    wire [31:0] dmem_rdata;
    wire dmem_w_en;
    wire [31:0] dmem_wdata;
    wire [5:0] dmem_addr;

    // CPU - IMEM
    wire [31:0] instruction_if;
    wire [31:0] pc_if;

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
    dcache dcache0 (
        .clk(clk), 
        .reset(reset), 
        .w_en(dmem_w_en), 
        .wdata(dmem_wdata), 
        .raddr(dmem_addr), 
        .waddr(dmem_addr),
        .rdata(dmem_rdata));

    // Instruction Memory
    icache instruction_memory(
        .addr(pc_if),
        .data(instruction_if)
    );
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        `ifndef PRE_SYN
    	    $sdf_annotate("cpu.sdf", cpu0);
    	`endif
        //$vcdpluson;
        $fsdbDumpfile("top_level_no_macros_tb.fsdb");
        $fsdbDumpvars(0, top_level_no_macros_tb);
        $dumpfile("top_level_no_macros_tb.vcd");
        $dumpvars();
        reset = 1; #20
        reset = 0;
        #1000
        $finish;
    end

endmodule
