module pattern
(
    input   clk, //27Mhz
    input   I_rst_n,
    input   [9:0] PIX_IN,      

    output [9:0]  PIX_OUT        
);

reg [9:0] pxt;

assign PIX_OUT = PIX_IN;
//==============================================================================
//Generate HS, VS, DE signals
always@(posedge clk  or negedge I_rst_n)
begin
    if(!I_rst_n)
        pxt = 0;
    else
        pxt = pxt + 1;
end

endmodule