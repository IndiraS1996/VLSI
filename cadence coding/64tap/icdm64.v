module icdm64(clk,rst,y);
input clk,rst;
output [15:0]y;
wire [15:0]m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31;
wire [15:0]m32,m33,m34,m35,m36,m37,m38,m39,m40,m41,m42,m43,m44,m45,m46,m47,m48,m49,m50,m51,m52,m53,m54,m55,m56,m57,m58,m59,m60,m61,m62,m63;
wire [15:0] out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,res1,res2,res3,res4,res5,res6,res7,res8,res9,res10,out11,out33,out55,out77,out99,res11,res33,res55,res77,res99,add1,add2,add3,add4,add5,add6,add7,add8,add9,add10,add11,add12,add13,add14,add15,ress1,ress11,ress3,ress33,ress5,ress55,ress7,ress77,ress9,ress99,ress2,ress4,ress6,ress8,ress10;
wire [15:0] outss1,adds1,outs1,outs2,outs3,outs4,outs5,outs6,outs7,outs8,outs9,outs10,outs11,outs33,outs55,outs77,outs99,add16,add17,add18,add19,add20,add21,add22,add23,add24,add25,add26,add27,add28,add29,resss1,resss11,resss3,resss33,resss5,resss55,resss7,resss77,resss9,resss99,resss2,resss4,resss6,resss8,resss10,add30;
wire[15:0]rest1,rest11,rest2,rest3,rest33,rest4,rest5,rest55,rest6,rest7,rest77,rest8,rest9,rest99,rest10,rests11,rests111;

wire [15:0] reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,reg10,result1,result2,result3,result4,result5,result6,result7,result8,result9,result10,reg11,reg33,reg55,reg77,reg99,result11,result33,result55,result77,result99,sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,sum10,sum11,sum12,sum13,sum14,sum15,rew1,rew11,rew3,rew33,rew5,rew55,rew7,rew77,rew9,rew99,rew2,rew4,rew6,rew8,rew10;
wire [15:0] regs1,regs2,regs3,regs4,regs5,regs6,regs7,regs8,regs9,regs10,regs11,regs33,regs55,regs77,regs99,sum0,sums1,sum16,sum17,sum18,sum19,sum20,sum21,sum22,sum23,sum24,sum25,sum26,sum27,sum28,sum29,sum30,rews1,rews11,rews3,rews33,rews5,rews55,rews7,rews77,rews9,rews99,rews2,rews4,rews6,rews8,rews10,rega1,rega2,y0,y1;
wire[15:0]re1,re11,re2,re3,re33,re4,re5,re55,re6,re7,re77,re8,re9,re99,re10,rets11,rets111;

wire [7:0]data_out;
parameter h63=8'b00000001;
parameter h62=8'b00000010;
parameter h61=8'b01111111;
parameter h60=8'b01111110;
parameter h59=8'b01111101;
parameter h58=8'b00000011;
parameter h57=8'b00001101;
parameter h56=8'b00010101;
parameter h55=8'b00010101;
parameter h54=8'b00001101;
parameter h53=8'b00000011;
parameter h52=8'b01111101;
parameter h51=8'b01111110;
parameter h50=8'b01111111;
parameter h49=8'b00000010;
parameter h48=8'b00000001;
parameter h47=8'b00000001;
parameter h46=8'b00000010;
parameter h45=8'b01111111;
parameter h44=8'b01111110;
parameter h43=8'b01111101;
parameter h42=8'b00000011;
parameter h41=8'b00001101;
parameter h40=8'b00010101;
parameter h39=8'b00010101;
parameter h38=8'b00001101;
parameter h37=8'b00000011;
parameter h36=8'b01111101;
parameter h35=8'b01111110;
parameter h34=8'b01111111;
parameter h33=8'b00000010;
parameter h32=8'b00000001;


parameter h31=8'b00000001;
parameter h30=8'b00000010;
parameter h29=8'b01111111;
parameter h28=8'b01111110;
parameter h27=8'b01111101;
parameter h26=8'b00000011;
parameter h25=8'b00001101;
parameter h24=8'b00010101;
parameter h23=8'b00010101;
parameter h22=8'b00001101;
parameter h21=8'b00000011;
parameter h20=8'b01111101;
parameter h19=8'b01111110;
parameter h18=8'b01111111;
parameter h17=8'b00000010;
parameter h16=8'b00000001;
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

sine a1(clk,data_out);

assign m0=data_out*h63;        
multiplx u1(m0,16'b0,1'b0,out1);
dfflip u2(clk,rst,out1,out11);

assign m1=data_out*h62;
multiplx u3(m1,16'b0,1'b1,out2);
assign add1=out11-out2;

multiplx u4(out1,add1,1'b0,out3);
dfflip u5(clk,rst,out3,out33);

assign m2=data_out*h61;
multiplx u6(m2,16'b0,1'b0,out4);
assign add2=out33+out4;

multiplx u7(out3,add2,1'b0,out5);
//dfflip u8(clk,rst,out5,out55);

assign m3=data_out*h60;
multiplx u9(m3,16'b0,1'b1,out6);
assign add3=out5+out6;

multiplx u10(out5,add3,1'b0,out7);
dfflip u11(clk,rst,out7,out77);

assign m4=data_out*h59;
multiplx u12(m4,16'b0,1'b0,out8);
assign add4=out77+out8;

multiplx u13(out7,add4,1'b0,out9);
//dfflip u14(clk,rst,out9,out99);

assign m5=data_out*h58;
multiplx u16(m5,16'b0,1'b1,out10);
assign add5=out9-out10;

multiplx u17(out9,add5,1'b0,res1);
dfflip u18(clk,rst,res1,res11);

assign m6=data_out*h57;
multiplx u19(m6,16'b0,1'b0,res2);
assign add6=res11+res2;

multiplx u20(res1,add6,1'b0,res3);
//dfflip u21(clk,rst,res3,res33);

assign m7=data_out*h56;
multiplx u22(m7,16'b0,1'b1,res4);
assign add7=res3+res4;

multiplx u23(res3,add7,1'b0,res5);
dfflip u24(clk,rst,res5,res55);

assign m8=data_out*h55;
multiplx u25(m8,16'b0,1'b0,res6);
assign add8=res55+res6;

multiplx u26(res5,add8,1'b0,res7);
//dfflip u27(clk,rst,res7,res77);

assign m9=data_out*h54;
multiplx u28(m9,16'b0,1'b1,res8);
assign add9=res7-res8;

multiplx u29(res7,add9,1'b0,res9);
dfflip u30(clk,rst,res9,res99);

assign m10=data_out*h53;
multiplx u31(m10,16'b0,1'b0,res10);
assign add10=res99+res10;
 
 
multiplx u32(res10,add10,1'b0,rest1);
//dfflip u33(clk,rst,rest1,rest11);

assign m11=data_out*h52;
multiplx u34(m11,16'b0,1'b1,rest2);
assign add11=rest1+rest2;

multiplx u35(ress2,add11,1'b0,rest3);
dfflip u36(clk,rst,rest3,rest33);

assign m12=data_out*h51;
multiplx u37(m12,16'b0,1'b0,rest4);
assign add12=rest33+rest4;
 
multiplx u38(ress4,add12,1'b0,rest5);
//dfflip u39(clk,rst,rest5,rest55);

assign m13=data_out*h50;
multiplx u40(m13,16'b0,1'b1,rest6);
assign add13=rest5-rest6;

multiplx u41(ress6,add13,1'b0,rest7);
dfflip u42(clk,rst,rest7,rest77);

assign m14=data_out*h49;
multiplx u43(m14,16'b0,1'b0,rest8);
assign add14=rest77+rest8;

multiplx u44(ress8,add14,1'b0,rest9);
//dfflip u45(clk,rst,rest9,rest99);

assign m15=data_out*h48;
multiplx u46(m15,16'b0,1'b1,rest10);
assign add15=rest9+rest10;

multiplx u47(ress10,add15,1'b0,rests11);
dfflip u48(clk,rst,rests11,rests111);

assign m16=data_out*h47;        
multiplx u49(m16,16'b0,1'b0,outs1);
assign adds1=rests111+outs1;

multiplx u499(rests111,adds1,1'b0,outss1);
//dfflip u50(clk,rst,outss1,outs11);

assign m17=data_out*h46;
multiplx u51(m17,16'b0,1'b1,outs2);
assign add16=outss1-outs2;

multiplx u52(out1,add16,1'b0,outs3);
dfflip u53(clk,rst,outs3,outs33);

assign m18=data_out*h45;
multiplx u54(m18,16'b0,1'b0,outs4);
assign add17=outs33+outs4;

multiplx u55(out3,add17,1'b0,outs5);
//dfflip u56(clk,rst,outs5,outs55);

assign m19=data_out*h44;
multiplx u57(m19,16'b0,1'b1,outs6);
assign add18=outs5+outs6;

multiplx u58(outs5,add18,1'b0,outs7);
dfflip u59(clk,rst,outs7,outs77);

assign m20=data_out*h43;
multiplx u60(m20,16'b0,1'b0,outs8);
assign add19=outs77+outs8;

multiplx u61(outs7,add19,1'b0,outs9);
//dfflip u62(clk,rst,outs9,outs99);

assign m21=data_out*h42;
multiplx u63(m21,16'b0,1'b1,outs10);
assign add20=outs9-outs10;

multiplx u64(outs9,add20,1'b0,ress1);
dfflip u65(clk,rst,ress1,ress11);

assign m22=data_out*h41;
multiplx u66(m22,16'b0,1'b0,ress2);
assign add21=ress11+ress2;

multiplx u644(ress1,add21,1'b0,ress3);
//dfflip u655(clk,rst,ress3,ress33);

assign m23=data_out*h40;
multiplx u666(m23,16'b0,1'b1,ress4);
assign add22=ress3+ress4;

multiplx u67(ress3,add22,1'b0,ress5);
dfflip u68(clk,rst,ress5,ress55);

assign m24=data_out*h39;
multiplx u69(m24,16'b0,1'b0,ress6);
assign add23=ress55+ress6;

multiplx u70(ress5,add23,1'b0,ress7);
//dfflip u71(clk,rst,ress7,ress77);

assign m25=data_out*h38;
multiplx u72(m25,16'b0,1'b1,ress8);
assign add24=ress7-ress8;

multiplx u73(ress7,add24,1'b0,ress9);
dfflip u74(clk,rst,ress9,ress99);

assign m26=data_out*h37;
multiplx u75(m26,16'b0,1'b0,ress10);
assign add25=ress99+ress10;
 
 
multiplx u76(ress10,add25,1'b0,resss1);
//dfflip u77(clk,rst,resss1,resss11);

assign m27=data_out*h36;
multiplx u78(m27,16'b0,1'b1,resss2);
assign add26=resss1+resss2;

multiplx u79(resss2,add26,1'b0,resss3);
dfflip u80(clk,rst,resss3,resss33);

assign m28=data_out*h35;
multiplx u81(m28,16'b0,1'b0,resss4);
assign add27=resss33+resss4;
 
multiplx u82(resss4,add27,1'b0,resss5);
//dfflip u83(clk,rst,resss5,resss55);

assign m29=data_out*h34;
multiplx u84(m29,16'b0,1'b1,resss6);
assign add28=resss5-resss6;

multiplx u85(resss6,add28,1'b0,resss7);
dfflip u86(clk,rst,resss7,resss77);

assign m30=data_out*h33;
multiplx u87(m30,16'b0,1'b0,resss8);
assign add29=resss77+resss8;

multiplx u88(resss8,add29,1'b0,resss9);
//dfflip u89(clk,rst,resss9,resss99);

assign m31=data_out*h32;
multiplx u90(m31,16'b0,1'b1,resss10);
assign add30=resss9+resss10;

multiplx u91(resss9,add30,1'b0,y0);
dfflip u92(clk,rst,y0,y1);
// 32 tap
assign m32=data_out*h31;        
multiplx v0(m32,16'b0,1'b0,reg1);
assign sum0=y1+reg1;

multiplx v1(y1,sum0,1'b0,rega1);
//dfflip v2(clk,rst,rega1,reg11);

assign m33=data_out*h30;
multiplx v3(m33,16'b0,1'b1,reg2);
assign sum1=rega1-reg2;

multiplx v4(rega1,sum1,1'b0,reg3);
dfflip v5(clk,rst,reg3,reg33);

assign m34=data_out*h29;
multiplx v6(m34,16'b0,1'b0,reg4);
assign sum2=reg33+reg4;

multiplx v7(reg3,sum2,1'b0,reg5);
//dfflip v8(clk,rst,reg5,reg55);

assign m35=data_out*h28;
multiplx v9(m35,16'b0,1'b1,reg6);
assign sum3=reg5+reg6;

multiplx v10(reg5,sum3,1'b0,reg7);
dfflip v11(clk,rst,reg7,reg77);

assign m36=data_out*h27;
multiplx v12(m36,16'b0,1'b0,reg8);
assign sum4=reg77+reg8;

multiplx v13(reg7,sum4,1'b0,reg9);
//dfflip v14(clk,rst,reg9,reg99);

assign m37=data_out*h26;
multiplx v16(m37,16'b0,1'b1,reg10);
assign sum5=reg9-reg10;

multiplx v17(reg9,sum5,1'b0,result1);
dfflip v18(clk,rst,result1,result11);

assign m38=data_out*h25;
multiplx v19(m38,16'b0,1'b0,result2);
assign sum6=result11+result2;

multiplx v20(result1,sum6,1'b0,result3);
//dfflip v21(clk,rst,result3,result33);

assign m39=data_out*h24;
multiplx v22(m39,16'b0,1'b1,result4);
assign sum7=result3+result4;

multiplx v23(result3,sum7,1'b0,result5);
dfflip v24(clk,rst,result5,result55);

assign m40=data_out*h23;
multiplx v25(m40,16'b0,1'b0,result6);
assign sum8=result55+result6;

multiplx v26(result5,sum8,1'b0,result7);
//dfflip v27(clk,rst,result7,result77);

assign m41=data_out*h22;
multiplx v28(m41,16'b0,1'b1,result8);
assign sum9=result7-result8;

multiplx v29(result7,sum9,1'b0,result9);
dfflip v30(clk,rst,result9,result99);

assign m42=data_out*h21;
multiplx v31(m42,16'b0,1'b0,result10);
assign sum10=result99+result10;
 
 
multiplx v32(result10,sum10,1'b0,re1);
//dfflip v33(clk,rst,re1,re11);

assign m43=data_out*h20;
multiplx v34(m43,16'b0,1'b1,re2);
assign sum11=re1+re2;

multiplx v35(re1,sum11,1'b0,re3);
dfflip v36(clk,rst,re3,re33);

assign m44=data_out*h19;
multiplx v37(m44,16'b0,1'b0,re4);
assign sum12=re33+re4;
 
multiplx v38(re33,sum12,1'b0,re5);
//dfflip v39(clk,rst,re5,re55);

assign m45=data_out*h18;
multiplx v40(m45,16'b0,1'b1,re6);
assign sum13=re5-re6;

multiplx v41(re5,sum13,1'b0,re7);
dfflip v42(clk,rst,re7,re77);

assign m46=data_out*h17;
multiplx v43(m46,16'b0,1'b0,re8);
assign sum14=re77+re8;

multiplx v44(re77,sum14,1'b0,re9);
//dfflip v45(clk,rst,re9,re99);

assign m47=data_out*h16;
multiplx v46(m47,16'b0,1'b1,re10);
assign sum15=re9+re10;

multiplx v47(re9,sum15,1'b0,rets11);
dfflip v48(clk,rst,rets11,rets111);

assign m48=data_out*h15;        
multiplx v49(m48,16'b0,1'b0,rega2);
assign sums1=rets111+rega2;

multiplx v499(rets111,sums1,1'b0,regs1);
//dfflip v50(clk,rst,regs1,regs11);

assign m49=data_out*h14;
multiplx v51(m49,16'b0,1'b1,regs2);
assign sum16=regs1-regs2;

multiplx v52(regs1,sum16,1'b0,regs3);
dfflip v53(clk,rst,regs3,regs33);

assign m50=data_out*h13;
multiplx v54(m50,16'b0,1'b0,regs4);
assign sum17=regs33+regs4;

multiplx v55(regs33,sum17,1'b0,regs5);
//dfflip v56(clk,rst,regs5,regs55);

assign m51=data_out*h12;
multiplx v57(m51,16'b0,1'b1,regs6);
assign sum18=regs5+regs6;

multiplx v58(regs5,sum18,1'b0,regs7);
dfflip v59(clk,rst,regs7,regs77);

assign m52=data_out*h11;
multiplx v60(m52,16'b0,1'b0,regs8);
assign sum19=regs77+regs8;

multiplx v61(regs77,sum19,1'b0,regs9);
//dfflip v62(clk,rst,regs9,regs99);

assign m53=data_out*h10;
multiplx v63(m53,16'b0,1'b1,regs10);
assign sum20=regs9-regs10;

multiplx v64(regs9,sum20,1'b0,rew1);
dfflip v65(clk,rst,rew1,rew11);

assign m54=data_out*h9;
multiplx v66(m54,16'b0,1'b0,rew2);
assign sum21=rew11+rew2;

multiplx v644(rew11,sum21,1'b0,rew3);
//dfflip v655(clk,rst,rew3,rew33);

assign m55=data_out*h8;
multiplx v666(m55,16'b0,1'b1,rew4);
assign sum22=rew3+rew4;

multiplx v67(rew3,sum22,1'b0,rew5);
dfflip v68(clk,rst,rew5,rew55);

assign m56=data_out*h7;
multiplx v69(m56,16'b0,1'b0,rew6);
assign sum23=rew55+rew6;

multiplx v70(rew55,sum23,1'b0,rew7);
//dfflip v71(clk,rst,rew7,rew77);

assign m57=data_out*h6;
multiplx v72(m57,16'b0,1'b1,rew8);
assign sum24=rew7-rew8;

multiplx v73(rew7,sum24,1'b0,rew9);
dfflip v74(clk,rst,rew9,rew99);

assign m58=data_out*h5;
multiplx v75(m58,16'b0,1'b0,rew10);
assign sum25=rew99+rew10;
 
 
multiplx v76(rew99,sum25,1'b0,rews1);
//dfflip v77(clk,rst,rews1,rews11);

assign m59=data_out*h4;
multiplx v78(m59,16'b0,1'b1,rews2);
assign sum26=rews1+rews2;

multiplx v79(rews1,sum26,1'b0,rews3);
dfflip v80(clk,rst,rews3,rews33);

assign m60=data_out*h3;
multiplx v81(m60,16'b0,1'b0,rews4);
assign sum27=rews33+rews4;
 
multiplx v82(rews33,sum27,1'b0,rews5);
//dfflip v83(clk,rst,rews5,rews55);

assign m61=data_out*h2;
multiplx v84(m61,16'b0,1'b1,rews6);
assign sum28=rews5-rews6;

multiplx v85(rews5,sum28,1'b0,rews7);
dfflip v86(clk,rst,rews7,rews77);

assign m62=data_out*h1;
multiplx v87(m62,16'b0,1'b0,rews8);
assign sum29=rews77+rews8;

multiplx v88(rews77,sum29,1'b0,rews9);
//dfflip v89(clk,rst,rews9,rews99);

assign m63=data_out*h0;
multiplx v90(m63,16'b0,1'b1,rews10);
assign sum30=rews9+rews10;

multiplx v91(rews9,sum30,1'b0,y);



endmodule



