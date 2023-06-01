module icache #(parameter MEM_DEP = 192) (
    input logic [31:0] addr,     // Address input (32 bits)
    output logic [31:0] data     // Data output (32 bits)
);

    // Initializing memory
    integer i;
    reg [31:0] instr_mem [0:MEM_DEP-1];

    // Read operation
    assign data = instr_mem[addr>>2];
    
    initial begin
        for(i = 0; i < MEM_DEP; i = i + 1) begin
            instr_mem[i] = 8'b0;
        end
        $readmemh("verilog/icache_init.txt", instr_mem, 0, 170);
    end

endmodule
