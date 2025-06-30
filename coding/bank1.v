module bank1(x0,x1,x2,x3,sel,clk,y0,y1,y2,y3);
input [7:0]x0,x1,x2,x3;
input clk;
input[1:0]sel;
output reg[7:0] y0,y1,y2,y3;

always@(posedge clk)
begin
case(sel)
2'b00: y0=x0;
2'b01: y1=x1;
2'b10: y2=x2;
2'b11: y3=x3;
endcase
end
endmodule
