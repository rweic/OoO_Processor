module priority_management #(parameter SIZE = 4) (
    allocate_i, resource_valid_i,
    entry_sel_o
);
    input allocate_i;  // enable signal
    input [SIZE-1:0] resource_valid_i;  // the resource is free - entry_free
    output reg [SIZE-1:0] entry_sel_o;

    reg found;

    always @(*) begin
        if (allocate_i) begin
            entry_sel_o = 'b0;
            found = 1'b0;
            for (integer i = 0; i < SIZE; i = i+1) begin
                if ((resource_valid_i[i] == 1'b1) & (~found)) begin
                    entry_sel_o[i] = 1'b1;
                    found = 1'b1;
                end
                else begin end
            end
        end
        else begin
            entry_sel_o = 'b0;
        end
    end    

endmodule