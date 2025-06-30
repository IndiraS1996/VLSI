module dfflip(clk,rst,d,q);
input clk;
input rst;
input [11:0] d;
output reg [11:0] q;
always @ (posedge clk)
begin
if(rst==1)
q<=8'b0;
else
q<=d;
end 
endmodule
