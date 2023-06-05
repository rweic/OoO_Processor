module priority_issue #(parameter SIZE = 4) (
    clk_i, reset_i,
    allocate_i, resource_valid_i, entry_ready_i,
    entry_sel_o, idx_issued_o
);
    input clk_i;
    input reset_i;
    input allocate_i;  // enable signal
    input [SIZE-1:0] resource_valid_i;  // the resource is free - entry_free
    input [SIZE-1:0] entry_ready_i;  // the entry is ready to be released
    output reg [SIZE-1:0] entry_sel_o; // the selected one for issue
    output reg [1:0] idx_issued_o; // the selected one for issue

    reg [1:0] age [0:SIZE-1];
    reg [1:0] idx;
    reg [1:0] oldest_age;

    reg allocate;
    reg allocate_reg;

    // for testing only
    wire [1:0] age0 = age[0];
    wire [1:0] age1 = age[1];
    wire [1:0] age2 = age[2];
    wire [1:0] age3 = age[3];

    assign idx_issued_o = idx;

    always @(posedge  clk_i) begin
        allocate <= allocate_i;
        allocate_reg <= allocate;
    end

    always @(posedge  clk_i) begin
    //always @(*) begin
        if (reset_i) begin
            idx = 'b0;
            for (integer i = 0; i < SIZE; i = i+1) begin
                age[i] = 'b0;  // all ages start with 0
            end
        end
        else begin
            for (integer i = 0; i < SIZE; i = i+1) begin
                if (~resource_valid_i[i] & allocate_reg) begin  // if the entry has something in, add the age to it
                    age[i] = age[i] + 1'b1;
                end
                else if (resource_valid_i[i]) begin
                    age[i] = 'b0;
                end
                else begin end
            end
        end
    end    

    always @(*) begin
        oldest_age = 'b0;
        for (integer i = 0; i < SIZE; i = i+1) begin
            if (oldest_age < age[i]) begin 
                oldest_age = age[i];
                idx = i;
            end
            else begin 
                oldest_age = oldest_age;
                idx = idx;
            end
        end
        if ((|entry_ready_i) & (oldest_age != 'b0))begin
            entry_sel_o = 'b0000;
            entry_sel_o[idx] = 1'b1;
        end
        else begin
            entry_sel_o = 'b0000;
        end
    end    

endmodule