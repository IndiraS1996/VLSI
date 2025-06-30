module dfflip1(clk,rst,d,q);
input clk;
input rst;
input [6:0] d;
output reg [6:0] q;
always @ (posedge clk)
begin
if(rst==1)
q<=7'b0;
else
q<=d;
end 
endmodule
