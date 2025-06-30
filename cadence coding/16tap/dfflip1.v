module dfflip1(clk,rst,d,q);
input clk;
input rst;
input [7:0] d;
output reg [7:0] q;
always @ (posedge clk)
begin
if(rst==1)
q<=8'b0;
else
q<=d;
end 
endmodule
