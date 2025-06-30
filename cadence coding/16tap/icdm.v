module icdm(clk,rst,y);
input clk,rst;
output [15:0]y;
wire [15:0]m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15;
wire [7:0]data_out;
wire [15:0] out1,out2,out5,out6,out7,out10,out11,out12,out15,out16,out17,out20,out21,out22,out25,out26,out27,out30,out31,out32,out35,out36,add1,add2,add3,add4,add5,add6,add7;
wire [7:0] out3,out4,out8,out9,out13,out14,out18,out19,out23,out24,out28,out29,out33,out34;
wire [15:0] out37,out40,out41,out42,out45,out46,out47,out50,out51,out52,out55,out56,out57,out60,out61,out62,out65,out66,out67,out70,out71,out72,out75,out76,add8,add9,add10,add11,add12,add13,add14,add15;
wire[7:0] out38,out39,out43,out44,out48,out49,out53,out54,out58,out59,out63,out64,out68,out69,out73,out74;
parameter h15=8'b00000001;
parameter h14=8'b00000010;
parameter h13=8'b01111111;
parameter h12=8'b01111110;
parameter h11=8'b01111101;
parameter h10=8'b00000011;
parameter h9=8'b00001101;
parameter h8=8'b00010101;
parameter h7=8'b00010101;
parameter h6=8'b00001101;
parameter h5=8'b00000011;
parameter h4=8'b01111101;
parameter h3=8'b01111110;
parameter h2=8'b01111111;
parameter h1=8'b00000010;
parameter h0=8'b00000001;

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

multiplx u38(out32,out36,1'b0,out37);

dfflip1 u39(clk,rst,out34,out38);
dfflip1 u40(clk,rst,out38,out39);
assign m8=out39*h8;

multiplx u41(m8,16'b0,1'b1,out40);
assign add8=out37+out40;
dfflip u42(clk,rst,add8,out41);

multiplx u43(out37,out41,1'b0,out42);

dfflip1 u44(clk,rst,out39,out43);
dfflip1 u45(clk,rst,out43,out44);
assign m9=out44*h9;

multiplx u46(m9,16'b0,1'b0,out45);
assign add9=out42+out45;
dfflip u47(clk,rst,add9,out46);

multiplx u48(out42,out46,1'b0,out47);

dfflip1 u49(clk,rst,out44,out48);
dfflip1 u50(clk,rst,out48,out49);
assign m10=out49*h10;

multiplx u51(m10,16'b0,1'b1,out50);
assign add10=out47-out50;
dfflip u52(clk,rst,add10,out51);

multiplx u53(out47,out51,1'b0,out52);

dfflip1 u54(clk,rst,out49,out53);
dfflip1 u55(clk,rst,out53,out54);
assign m11=out54*h11;

multiplx u56(m11,16'b0,1'b0,out55);
assign add11=out52+out55;
dfflip u57(clk,rst,add11,out56);

multiplx u58(out52,out56,1'b0,out57);


dfflip1 u59(clk,rst,out54,out58);
dfflip1 u60(clk,rst,out58,out59);
assign m12=out59*h12;

multiplx u61(m12,16'b0,1'b1,out60);
assign add12=out57+out60;
dfflip u62(clk,rst,add12,out61);

multiplx u63(out57,out61,1'b0,out62);

dfflip1 u64(clk,rst,out59,out63);
dfflip1 u65(clk,rst,out63,out64);
assign m13=out64*h13;

multiplx u66(m13,16'b0,1'b0,out65);
assign add13=out62+out65;
dfflip u67(clk,rst,add13,out66);

multiplx u68(out62,out66,1'b0,out67);

dfflip1 u69(clk,rst,out64,out68);
dfflip1 u70(clk,rst,out68,out69);
assign m14=out69*h14;

multiplx u71(m14,16'b0,1'b1,out70);
assign add14=out67-out70;
dfflip u72(clk,rst,add14,out71);

multiplx u73(out67,out71,1'b0,out72);

dfflip1 u74(clk,rst,out69,out73);
dfflip1 u75(clk,rst,out73,out74);
assign m15=out74*h15;

multiplx u76(m15,16'b0,1'b0,out75);
assign add15=out72+out75;
dfflip u77(clk,rst,add15,out76);

multiplx u78(out72,out76,1'b0,y);

endmodule
