module lsu ();
    input clk_i, reset_i;

    fifo lsu_fifo (
        // Inputs
        .clk_i(clk_i), 
        .reset_i(reset_i), 
        .data_in_i(), 
        .wr_i(), 
        .rd_i(), 
        // Outputs
        .data_out_o(), 
        .valid_o(), 
        .not_full_o()
    );

endmodule