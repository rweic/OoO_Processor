/* FIFO
 */
module fifo 
#(
    parameter WIDTH = 8,
    parameter DEPTH = 8,
    parameter ADDR_LEN = 3
) (
    // Inputs
    clk_i, reset_i, data_in_i, wr_i, rd_i, 
    // Outputs
    data_out_o, empty_o, full_o
);
    input clk_i, reset_i;
    input wr_i, rd_i;
    input [WIDTH-1:0] data_in_i;
    output reg [WIDTH-1:0] data_out_o;
    output empty_o, full_o;

    reg [WIDTH-1:0] mem [0:DEPTH-1];
    reg [ADDR_LEN-1:0] rd_i_ptr, wr_i_ptr;
    reg [ADDR_LEN-1:0] fifo_cnt;

    // generate fifo signals
    assign empty_o = (fifo_cnt == 0) ? 1:0;
    assign full_o = (fifo_cnt == DEPTH) ? 1:0;

    // counter block
    always @(posedge clk_i)
    begin
        if(!reset_i)
            fifo_cnt <= 0;
        else begin
            case({wr_i,rd_i})
                2'b01: fifo_cnt <= (fifo_cnt==0) ? 0:fifo_cnt-1;
                2'b10: fifo_cnt <= (fifo_cnt==DEPTH) ? DEPTH:fifo_cnt+1;
                default: fifo_cnt <= fifo_cnt;
            endcase
        end
    end

    // pointer block
    always @(posedge clk_i)
    begin
        if(!reset_i) begin
            wr_i_ptr <= 0;
            rd_i_ptr <= 0;
        end
        else begin
            wr_i_ptr <= (wr_i && !full_o)||(wr_i && rd_i) ? wr_i_ptr+1 : wr_i_ptr;
            rd_i_ptr <= (rd_i && !empty_o)||(wr_i && rd_i) ? rd_i_ptr+1 : rd_i_ptr;
        end
    end

    // read & write
    always @(posedge clk_i)
    begin
        if (wr_i && !full_o)
            mem[wr_i_ptr] <= data_in_i;
        else if(wr_i && rd_i)
            mem[wr_i_ptr] <= data_in_i;
    end

    always @(posedge clk_i)
    begin
        if(rd_i && !empty_o)
            data_out_o <= mem[rd_i_ptr];
        else if(wr_i && rd_i)
            data_out_o <= mem[rd_i_ptr];
        else
            data_out_o <= 8'b0;
    end

endmodule