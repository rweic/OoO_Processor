/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : T-2022.03-SP3
// Date      : Wed May 10 15:52:50 2023
/////////////////////////////////////////////////////////////


module toplevel ( clk, reset );
  input clk, reset;
  wire   dmem_w_en;
  wire   [31:0] dmem_rdata;
  wire   [31:0] dmem_wdata;
  wire   [5:0] dmem_addr;
  wire   [31:0] instruction_if;
  wire   [31:0] pc_if;

  cpu cpu0 ( .clk(clk), .reset(reset), .dmem_rdata(dmem_rdata), .dmem_w_en(
        dmem_w_en), .dmem_wdata(dmem_wdata), .dmem_addr(dmem_addr), 
        .instruction_if(instruction_if), .pc_if(pc_if) );
  dcache dcache0 ( .clk(clk), .reset(reset), .w_en(dmem_w_en), .wdata(
        dmem_wdata), .raddr(dmem_addr), .waddr(dmem_addr), .rdata(dmem_rdata)
         );
  icache instruction_memory ( .addr(pc_if), .data(instruction_if) );
endmodule

