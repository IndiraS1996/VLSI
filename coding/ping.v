module ping(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,clock,sel,address,z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15);
input[1:0]address,sel;
input clock;
output reg[7:0]z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15;
input[7:0]x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
wire[7:0]y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
bank1 m1(x0,x1,x2,x3,sel,clock,y0,y1,y2,y3);
 bank1 m2(x4,x5,x6,x7,sel,clock,y4,y5,y6,y7);
 bank1 m3(x8,x9,x10,x11,sel,clock,y8,y9,y10,y11);
bank1 m4(x12,x13,x14,x15,sel,clock,y12,y13,y14,y15);

always@(address)
begin

if(address == 00)
begin 
 z0 <= y0;z1 <= y1;z2 <= y2;z3 <= y3;
end
else if(address == 01)
begin 
 z4 <= y4;z5 <= y5;z6 <= y6;z7 <= y7;
 end
else if(address == 10)
begin
 z8 <= y8;z9 = y9;z10 = y10;z11 = y11;
 end
 else
 begin
 z12 = y12;z13 = y13;z14 = y14;z15 = y15;
end
//endcase
end
endmodule 