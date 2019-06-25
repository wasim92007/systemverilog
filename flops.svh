// Most Simple flop
`define FLOP(q, d, clk)    \
    always_ff @(posedge clk) begin    \
        q <= d;    \
    end

// Flop with synchronous enable
`define FLOP_EN(q, d, clk, enable)    \
    always_ff @(posedge clk) begin    \
        if (enable) begin    \
            q <= d;    \
         end    \
    end
    
// Flop with async reset

// Flop with async reset and enable

// Flop with async, sync reset

// Flop with async, sync reset and enable

// Flop with async reset with reset val

// Flop with async reset with reset val and enable

// Flop with async and sync reset with reset val
`define FLOP_RSTB_SYNC_RST_VAL(q, d, clk, async_rst, sync_rst, reset_val)    \
    always_ff @(posedge clk, negedge async_rst) begin    \
        if (!async_rst) begin    \
            q <= reset_val;    \
        end    \
        else    \
            if (sync_rst) begin    \
                q <= reset_val;    \
            end    \
            else    \
                q <= d;    \
     end           
            

// Flop with async, sync reset with reset val and enable

    
