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
    output [WIDTH-1:0] data_out_o;
    output empty_o, full_o;

    reg [WIDTH-1:0] mem [0:DEPTH-1];
    reg [ADDR_LEN-1:0] rd_ptr, wr_ptr;
    reg [ADDR_LEN-1:0] fifo_cnt;

    // generate fifo signals
    assign empty_o = (fifo_cnt == 0);
    assign full_o = (fifo_cnt == DEPTH);

    // Comment out this : for DEBUG ONLY
    //wire [WIDTH-1:0] line1 = mem[0];
    //wire [WIDTH-1:0] line2 = mem[1];

    // counter block
    integer i;
    always @(posedge clk_i)
    begin
        if(!reset_i) begin
            fifo_cnt <= 0;
            for (i = 0; i < DEPTH; i = i + 1) begin
                mem[i] <= 'b0;
            end
        end
        else begin
            if ((wr_i && !full_o) & ~(rd_i && !empty_o))
                fifo_cnt <= fifo_cnt-1;
            else if (~(wr_i && !full_o) & (rd_i && !empty_o))
                fifo_cnt <= fifo_cnt+1;
        end
    end

    // pointer block
    always @(posedge clk_i)
    begin
        if(reset_i) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
        end
        else begin
            wr_ptr <= (wr_i && !full_o) ? wr_ptr+1 : wr_ptr;
            rd_ptr <= (rd_i) ? rd_ptr+1 : rd_ptr;
        end
    end

    // write
    always @(posedge clk_i)
    begin
        if (wr_i && !full_o)
            mem[wr_ptr] <= data_in_i;
        else begin end
    end
    
    // read -> async
    assign data_out_o = mem[rd_ptr];
    /*always @(posedge clk_i)
    begin
        if(rd_i && !empty_o)
            data_out_o <= mem[rd_ptr];
        else if(wr_i && rd_i)
            data_out_o <= mem[rd_ptr];
        else
            data_out_o <= 8'b0;
    end*/

endmodule