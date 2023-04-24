module icache #(parameter MEM_DEP = 64) (
    input logic [31:0] addr,     // Address input (32 bits)
    output logic [31:0] data     // Data output (32 bits)
);

    /*
    // Instruction memory implemented using registers
    // Hard-coded instructions for now
    reg [31:0] instr_mem [0:63] = '{
        32'b00001000110000000000000011101111,
        32'b11111110000000010000000100010011,
        32'b00000000000100010010111000100011,
        // Add more instructions as needed
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000,
        32'b00000000000000000000000000000000
    };*/

    // Read operation
    assign data = instr_mem[addr];

    // Second way of initializing memory
    integer i;
    reg [31:0] instr_mem [0:MEM_DEP-1];
    initial begin
        for(i = 0; i < MEM_DEP; i = i + 1) begin
            instr_mem[i] = 8'b0;
            $readmemh("/Users/salazarchen/Desktop/OoO_Processor/src/icache_init.txt", instr_mem);
        end
    end

endmodule