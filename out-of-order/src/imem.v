// OpenRAM SRAM model
// Words: 256
// Word size: 32

module imem(
`ifdef USE_POWER_PINS
    vdd,
    gnd,
`endif
// Port 0: RW
    clk0,csb0,web0,addr0,din0,dout0
  );

  parameter DATA_WIDTH = 32 ;
  parameter ADDR_WIDTH = 8 ;
  parameter RAM_DEPTH = 1 << ADDR_WIDTH;
  // FIXME: This delay is arbitrary.
  parameter DELAY = 3 ;
  parameter VERBOSE = 1 ; //Set to 0 to only display warnings
  parameter T_HOLD = 1 ; //Delay to hold dout value after posedge. Value is arbitrary

`ifdef USE_POWER_PINS
    inout vdd;
    inout gnd;
`endif
  input  clk0; // clock
  input   csb0; // active low chip select
  input  web0; // active low write control
  input [ADDR_WIDTH-1:0]  addr0;
  input [DATA_WIDTH-1:0]  din0;
  output [DATA_WIDTH-1:0] dout0;

  reg [DATA_WIDTH-1:0]    mem [0:RAM_DEPTH-1];

  // ----- For testing only -----
  wire [DATA_WIDTH-1:0] mem0, mem1;
  assign mem0 = mem[0];
  assign mem1 = mem[1];

  reg  csb0_reg;
  reg  web0_reg;
  reg [ADDR_WIDTH-1:0]  addr0_reg;
  reg [DATA_WIDTH-1:0]  din0_reg;
  reg [DATA_WIDTH-1:0]  dout0;

  // All inputs are registers
  always @(posedge clk0)
  begin
    csb0_reg = csb0;
    web0_reg = web0;
    addr0_reg = addr0;
    din0_reg = din0;
    #(T_HOLD) dout0 = 32'bx;
    if ( !csb0_reg && web0_reg && VERBOSE )
      $display($time," Reading %m addr0=%b dout0=%b",addr0_reg,mem[addr0_reg]);
    if ( !csb0_reg && !web0_reg && VERBOSE )
      $display($time," Writing %m addr0=%b din0=%b",addr0_reg,din0_reg);
  end

  // FOR TEST ONLY, COMMENT OUT LATER
  initial begin
    for (integer i=0; i < RAM_DEPTH; i = i + 1 ) begin
      mem[i] = 'h00000000;
    end
    mem[0] = 'h003100b3; // add x1, x2, x3
    mem[1] = 'h40730233; // sub x4, x6, x7
    mem[2] = 'h003103b3; // mul x3, x6, x9
    mem[3] = 'h029301b3; // add x7, x2, x3
    mem[4] = 'h00610433; // sll x8, x2, x6
  end

  // Memory Write Block Port 0
  // Write Operation : When web0 = 0, csb0 = 0
  always @ (negedge clk0)
  begin : MEM_WRITE0
    if ( !csb0_reg && !web0_reg ) begin
        mem[addr0_reg][31:0] = din0_reg[31:0];
    end
  end

  // Memory Read Block Port 0
  // Read Operation : When web0 = 1, csb0 = 0
  always @ (negedge clk0)
  begin : MEM_READ0
    if (!csb0_reg && web0_reg)
       dout0 <= #(DELAY) mem[addr0_reg];
  end

endmodule
