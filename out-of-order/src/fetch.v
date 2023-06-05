/* Fetch Module
 * This module fetch instruction from instruction memory
 */
module fetch (
    // Inputs
    clk_i, reset_i, stall_i, pc_sel_i, br_dest,
    // Outputs
    pc_o, inst_o, inst_valid_o,

    // imem
    imem_addr_o,
    imem_inst_i
);
    // ----- Input/Output Ports -----
    input clk_i;
    input reset_i;
    input stall_i;
    input pc_sel_i;
    input [31:0] br_dest;
    output reg [31:0] pc_o;
    output reg [31:0] inst_o;
    output reg inst_valid_o;

    // imem
    output reg [7:0] imem_addr_o;
    input [31:0] imem_inst_i;

    // ----- Reg/wire Initialization -----
    wire csb;
    wire [31:0] imem_dout;
    // Program Counter
    reg [31:0] pc;
    reg [31:0] inst_valid;

    assign imem_addr_o = pc[9:2];
    assign imem_dout =imem_inst_i;

    // csb need to be 0 when read is enabled or write is enabled
    /*imem imem (
        .clk0(clk_i), 
        .csb0(1'b0), 
        .web0(1'b1),
        .addr0(pc[9:2]),  // need to make this configurable later
        .din0('b0),
        .dout0(imem_dout)
    );*/

    always @(posedge clk_i) begin
        if (reset_i) begin
            pc_o <= 'b0;
            inst_o <= 'b0;
            inst_valid <= 'b0;
            inst_valid_o <= 'b0;
        end
        else begin
            pc_o <= pc;
            inst_o <= imem_dout;
            inst_valid <= 1'b1;
            inst_valid_o <= inst_valid;
        end
    end

    always @(posedge clk_i) begin
        if (reset_i)
            pc <= 'b0;
        else if (stall_i) 
            pc <= pc;
        else begin
            case (pc_sel_i)
                1'b0:
                    pc <=  pc + 4;
                1'b1:
                    pc <=  br_dest;
                default: 
                    pc <= pc;
            endcase
        end
    end

endmodule