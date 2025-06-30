module dfflip(clk,rst,d,q);
input clk;
input rst;
input [15:0] d;
output reg [15:0] q;
always @ (posedge clk)
begin
if(rst==1)
q<=15'b0;
else
q<=d;
end 
endmodule
