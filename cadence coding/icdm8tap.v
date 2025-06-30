module icdm(clk,rst,y);
input clk,rst;
output [15:0]y;
wire [15:0]m0,m1,m2,m3,m4,m5,m6,m7;
wire [6:0]data_out;
wire [15:0] out1,out2,out5,out6,out7,out10,out11,out12,out15,out16,out17,out20,out21,out22,out25,out26,out27,out30,out31,out32,out35,out36,add1,add2,add3,add4,add5,add6,add7;
wire [6:0] out3,out4,out8,out9,out13,out14,out18,out19,out23,out24,out28,out29,out33,out34;
parameter h7=8'b11111011;
parameter h6=8'b00000101;
parameter h5=8'b00011000;
parameter h4=8'b00101010;
parameter h3=8'b00101010;
parameter h2=8'b00011000;
parameter h1=8'b00000101;
parameter h0=8'b00000101; 

sine u1(clk,data_out);

assign m0=data_out*h0;        
multiplx u2(m0,16'b0,1'b1,out1);
dfflip u3(clk,rst,out1,out2);

  
dfflip1 u4(clk,rst,data_out,out3);
dfflip1 u5(clk,rst,out3,out4);
assign m1=out4*h1;
multiplx u6(m1,16'b0,1'b0,out5);
assign add1= out2+out5	;
dfflip u7(clk,rst,add1,out6);  

multiplx u8(out2,out6,1'b0,out7);
  
dfflip1 u9(clk,rst,out4,out8);
dfflip1 u10(clk,rst,out8,out9);
assign m2=out9*h2; 
                
multiplx u11(m2,16'b0,1'b1,out10);
assign add2=out7-out10;  
dfflip u12(clk,rst,add2,out11);
        
multiplx u13(out7,out11,1'b0,out12);
 
dfflip1 u14(clk,rst,out9,out13);
dfflip1 u15(clk,rst,out13,out14);
assign m3=out14*h3;
                   
multiplx u16(m3,16'b0,1'b0,out15);
assign add3=out12+out15;
dfflip u17(clk,rst,add3,out16);

multiplx u18(out12,out16,1'b0,out17);

dfflip1 u19(clk,rst,out14,out18);
dfflip1 u20(clk,rst,out18,out19);
assign m4=out19*h4;

multiplx u21(m4,16'b0,1'b1,out20);
assign add4=out17+out20;
dfflip u22(clk,rst,add4,out21);

multiplx u23(out17,out21,1'b0,out22);

dfflip1 u24(clk,rst,out19,out23);
dfflip1 u25(clk,rst,out23,out24);
assign m5=out24*h5;

multiplx u26(m5,16'b0,1'b0,out25);
assign add5=out22+out25;
dfflip u27(clk,rst,add5,out26);

multiplx u28(out22,out26,1'b0,out27);

dfflip1 u29(clk,rst,out24,out28);
dfflip1 u30(clk,rst,out28,out29);
assign m6=out29*h6;

multiplx u31(m6,16'b0,1'b1,out30);
assign add6=out27-out30;
dfflip u32(clk,rst,add6,out31);

multiplx u33(out27,out31,1'b0,out32);

dfflip1 u34(clk,rst,out29,out33);
dfflip1 u35(clk,rst,out33,out34);
assign m7=out34*h7;

multiplx u36(m7,16'b0,1'b0,out35);
assign add7=out32+out35;
dfflip u37(clk,rst,add7,out36);

multiplx u38(out32,out36,1'b0,y);


endmodule
