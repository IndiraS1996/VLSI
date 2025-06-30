module mem(sel,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
//input [3:0]a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
input[1:0] sel;
output reg [7:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
always @(sel)
begin 
case (sel)
2'b00: ;
2'b01: x1=1;
2'b10: x2=1;
2'b11: x3=1;
/*
4'b0100: x4=1;
4'b0101: x5=1;
4'b0110: x6=1;
4'b0111: x7=1;
4'b1000: x8=1;
4'b1001: x9=1;
4'b1010: x10=1;
4'b1011: x11=1;
4'b1100: x12=1;
4'b1101: x13=1;
4'b1110: x14=1;
4'b1111: x15=1;
//default: $display("error in SEL");*/

endcase 
end 
endmodule
