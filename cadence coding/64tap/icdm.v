module icdm(clk,rst,y);
input clk,rst;
output [15:0]y;
wire [15:0]m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31;
wire [15:0]m32,m33,m34,m35,m36,m37,m38,m39,m40,m41,m42,m43,m44,m45,m46,m47,m48,m49,m50,m51,m52,m53,m54,m55,m56,m57,m58,m59,m60,m61,m62,m63;
wire [7:0]data_out;
wire [15:0] out1,out2,out5,out6,out7,out10,out11,out12,out15,out16,out17,out20,out21,out22,out25,out26,out27,out30,out31,out32,out35,out36,add1,add2,add3,add4,add5,add6,add7;
wire [7:0] out3,out4,out8,out9,out13,out14,out18,out19,out23,out24,out28,out29,out33,out34;
wire [15:0] out37,out40,out41,out42,out45,out46,out47,out50,out51,out52,out55,out56,out57,out60,out61,out62,out65,out66,out67,out70,out71,out72,out75,out76,add8,add9,add10,add11,add12,add13,add14,add15;
wire[7:0] out38,out39,out43,out44,out48,out49,out53,out54,out58,out59,out63,out64,out68,out69,out73,out74;
wire [15:0] out77,outs0,outs1,outs2,outs5,outs6,outs7,outs10,outs11,outs12,outs15,outs16,outs17,outs20,outs21,outs22,outs25,outs26,outs27,outs30,outs31,outs32,outs35,outs36,add16,add17,add18,add19,add20,add21,add22;
wire [7:0] outs3,outs4,outs8,outs9,outs13,outs14,outs18,outs19,outs23,outs24,outs28,outs29,outs33,outs34;
wire [15:0] outs37,outs40,outs41,outs42,outs45,outs46,outs47,outs50,outs51,outs52,outs55,outs56,outs57,outs60,outs61,outs62,outs65,outs66,outs67,outs70,outs71,outs72,outs75,outs76,outs77,add23,add24,add25,add26,add27,add28,add29,add30,add31;
wire[7:0] outs38,outs39,outs43,outs44,outs48,outs49,outs53,outs54,outs58,outs59,outs63,outs64,outs68,outs69,outs73,outs74,out78,out79;

wire [15:0] sum1,sum2,sum5,sum6,sum7,sum10,sum11,sum12,sum15,sum16,sum17,sum20,sum21,sum22,sum25,sum26,sum27,sum30,sum31,sum32,sum35,sum36,res1,res2,res3,res4,res5,res6,res7;
wire [7:0] sum3,sum4,sum8,sum9,sum13,sum14,sum18,sum19,sum23,sum24,sum28,sum29,sum33,sum34;
wire [15:0] sum37,sum40,sum41,sum42,sum45,sum46,sum47,sum50,sum51,sum52,sum55,sum56,sum57,sum60,sum61,sum62,sum65,sum66,sum67,sum70,sum71,sum72,sum75,sum76,res8,res9,res10,res11,res12,res13,res14,res15;
wire[7:0] sum38,sum39,sum43,sum44,sum48,sum49,sum53,sum54,sum58,sum59,sum63,sum64,sum68,sum69,sum73,sum74,sum78,sum79;
wire [15:0] sum0,sum77,sums1,sums2,sums5,sums6,sums7,sums10,sums11,sums12,sums15,sums16,sums17,sums20,sums21,sums22,sums25,sums26,sums27,sums30,sums31,sums32,sums35,sums36,res16,res17,res18,res19,res20,res21,res22;
wire [7:0] sums3,sums4,sums8,sums9,sums13,sums14,sums18,sums19,sums23,sums24,sums28,sums29,sums33,sums34;
wire [15:0] add32,sums0, sums37,sums40,sums41,sums42,sums45,sums46,sums47,sums50,sums51,sums52,sums55,sums56,sums57,sums60,sums61,sums62,sums65,sums66,sums67,sums70,sums71,sums72,sums75,sums76,res23,res24,res25,res26,res27,res28,res29,res30,res31;
wire[7:0] sums38,sums39,sums43,sums44,sums48,sums49,sums53,sums54,sums58,sums59,sums63,sums64,sums68,sums69,sums73,sums74,outs78,outs79;

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

multiplx u78(out72,out76,1'b0,out77);

dfflip1 u79(clk,rst,out74,out78);
dfflip1 u80(clk,rst,out78,out79);
assign m16=out79*h16;  
      
multiplx v1(m16,16'b0,1'b1,outs0);
assign add16=out77+outs0;
dfflip v2(clk,rst,add16,outs1);

multiplx v3(out77,outs1,1'b0,outs2);

  
dfflip1 v4(clk,rst,out79,outs3);
dfflip1 v5(clk,rst,outs3,outs4);
assign m17=outs4*h17;
multiplx v6(m17,16'b0,1'b0,outs5);
assign add17= outs2+outs5	;
dfflip v7(clk,rst,add17,outs6);  

multiplx v8(outs2,outs6,1'b0,outs7);
  
dfflip1 v9(clk,rst,outs4,outs8);
dfflip1 v10(clk,rst,outs8,outs9);
assign m18=outs9*h18; 
                
multiplx v11(m18,16'b0,1'b1,outs10);
assign add18=outs7-outs10;  
dfflip v12(clk,rst,add18,outs11);
        
multiplx v13(outs7,outs11,1'b0,outs12);
 
dfflip1 v14(clk,rst,outs9,outs13);
dfflip1 v15(clk,rst,outs13,outs14);
assign m19=outs14*h19;
                   
multiplx v16(m19,16'b0,1'b0,outs15);
assign add19=outs12+outs15;
dfflip v17(clk,rst,add19,outs16);

multiplx v18(outs12,outs16,1'b0,outs17);

dfflip1 v19(clk,rst,outs14,outs18);
dfflip1 v20(clk,rst,outs18,outs19);
assign m20=outs19*h20;

multiplx v21(m20,16'b0,1'b1,outs20);
assign add20=outs17+outs20;
dfflip v22(clk,rst,add20,outs21);

multiplx v23(outs17,outs21,1'b0,outs22);

dfflip1 v24(clk,rst,outs19,outs23);
dfflip1 v25(clk,rst,outs23,outs24);
assign m21=outs24*h21;

multiplx v26(m21,16'b0,1'b0,outs25);
assign add21=outs22+outs25;
dfflip v27(clk,rst,add21,outs26);

multiplx v28(outs22,outs26,1'b0,outs27);

dfflip1 v29(clk,rst,outs24,outs28);
dfflip1 v30(clk,rst,outs28,outs29);
assign m22=outs29*h22;

multiplx v31(m22,16'b0,1'b1,outs30);
assign add22=outs27-outs30;
dfflip v32(clk,rst,add22,outs31);

multiplx v33(outs27,outs31,1'b0,outs32);

dfflip1 v34(clk,rst,outs29,outs33);
dfflip1 v35(clk,rst,outs33,outs34);
assign m23=outs34*h23;

multiplx v36(m23,16'b0,1'b0,outs35);
assign add23=outs32+outs35;
dfflip v37(clk,rst,add23,outs36);

multiplx v38(outs32,outs36,1'b0,outs37);

dfflip1 v39(clk,rst,outs34,outs38);
dfflip1 v40(clk,rst,outs38,outs39);
assign m24=outs39*h24;

multiplx v41(m24,16'b0,1'b1,outs40);
assign add24=outs37+outs40;
dfflip v42(clk,rst,add24,outs41);

multiplx v43(outs37,outs41,1'b0,outs42);

dfflip1 v44(clk,rst,outs39,outs43);
dfflip1 v45(clk,rst,outs43,outs44);
assign m25=outs44*h25;

multiplx v46(m25,16'b0,1'b0,outs45);
assign add25=outs42+outs45;
dfflip v47(clk,rst,add25,outs46);

multiplx v48(outs42,outs46,1'b0,outs47);

dfflip1 v49(clk,rst,outs44,outs48);
dfflip1 v50(clk,rst,outs48,outs49);
assign m26=outs49*h26;

multiplx v51(m26,16'b0,1'b1,outs50);
assign add26=outs47-outs50;
dfflip v52(clk,rst,add26,outs51);

multiplx v53(outs47,outs51,1'b0,outs52);

dfflip1 v54(clk,rst,outs49,outs53);
dfflip1 v55(clk,rst,outs53,outs54);
assign m27=outs54*h27;

multiplx v56(m27,16'b0,1'b0,outs55);
assign add27=outs52+outs55;
dfflip v57(clk,rst,add27,outs56);

multiplx v58(outs52,outs56,1'b0,outs57);


dfflip1 v59(clk,rst,outs54,outs58);
dfflip1 v60(clk,rst,outs58,outs59);
assign m28=outs59*h28;

multiplx v61(m28,16'b0,1'b1,outs60);
assign add28=outs57+outs60;
dfflip v62(clk,rst,add28,outs61);

multiplx v63(outs57,outs61,1'b0,outs62);

dfflip1 v64(clk,rst,outs59,outs63);
dfflip1 v65(clk,rst,outs63,outs64);
assign m29=outs64*h29;

multiplx v66(m29,16'b0,1'b0,outs65);
assign add29=outs62+outs65;
dfflip v67(clk,rst,add29,outs66);

multiplx v68(outs62,outs66,1'b0,outs67);

dfflip1 v69(clk,rst,outs64,outs68);
dfflip1 v70(clk,rst,outs68,outs69);
assign m30=outs69*h30;

multiplx v71(m30,16'b0,1'b1,outs70);
assign add30=outs67-outs70;
dfflip v72(clk,rst,add30,outs71);

multiplx v73(outs67,outs71,1'b0,outs72);

dfflip1 v74(clk,rst,outs69,outs73);
dfflip1 v75(clk,rst,outs73,outs74);
assign m31=outs74*h31;

multiplx v76(m31,16'b0,1'b0,outs75);
assign add31=outs72+outs75;
dfflip v77(clk,rst,add31,outs76);

multiplx v78(outs72,outs76,1'b0,outs77);

dfflip1 v79(clk,rst,outs74,outs78);
dfflip1 v80(clk,rst,outs78,outs79);
assign m32=outs79*h32; 
       
multiplx w1(m32,16'b0,1'b1,sum0);
assign add32=outs77+sum0; 
dfflip w2(clk,rst,add32,sum1);

multiplx w3(outs77,sum1,1'b0,sum2);
 
dfflip1 w4(clk,rst,outs79,sum3);
dfflip1 w5(clk,rst,sum3,sum4);
assign m33=sum4*h33;

multiplx w6(m33,16'b0,1'b0,sum5);
assign res1= sum2+sum5	;
dfflip w7(clk,rst,res1,sum6);  

multiplx w8(sum2,sum6,1'b0,sum7);
  
dfflip1 w9(clk,rst,sum4,sum8);
dfflip1 w10(clk,rst,sum8,sum9);
assign m34=sum9*h34; 
                
multiplx w11(m34,16'b0,1'b1,sum10);
assign res2=sum7-sum10;  
dfflip w12(clk,rst,res2,sum11);
        
multiplx w13(sum7,sum11,1'b0,sum12);
 
dfflip1 w14(clk,rst,sum9,sum13);
dfflip1 w15(clk,rst,sum13,sum14);
assign m35=sum14*h35;
                   
multiplx w16(m35,16'b0,1'b0,sum15);
assign res3=sum12+sum15;
dfflip w17(clk,rst,res3,sum16);

multiplx w18(sum12,sum16,1'b0,sum17);

dfflip1 w19(clk,rst,sum14,sum18);
dfflip1 w20(clk,rst,sum18,sum19);
assign m36=sum19*h36;

multiplx w21(m36,16'b0,1'b1,sum20);
assign res4=sum17+sum20;
dfflip w22(clk,rst,res4,sum21);

multiplx w23(sum17,sum21,1'b0,sum22);

dfflip1 w24(clk,rst,sum19,sum23);
dfflip1 w25(clk,rst,sum23,sum24);
assign m37=sum24*h37;

multiplx w26(m37,16'b0,1'b0,sum25);
assign res5=sum22+sum25;
dfflip w27(clk,rst,res5,sum26);

multiplx w28(sum22,sum26,1'b0,sum27);

dfflip1 w29(clk,rst,sum24,sum28);
dfflip1 w30(clk,rst,sum28,sum29);
assign m38=sum29*h38;

multiplx w31(m38,16'b0,1'b1,sum30);
assign res6=sum27-sum30;
dfflip w32(clk,rst,res6,sum31);

multiplx w33(sum27,sum31,1'b0,sum32);

dfflip1 w34(clk,rst,sum29,sum33);
dfflip1 w35(clk,rst,sum33,sum34);
assign m39=sum34*h39;

multiplx w36(m39,16'b0,1'b0,sum35);
assign res7=sum32+sum35;
dfflip w37(clk,rst,res7,sum36);

multiplx w38(sum32,sum36,1'b0,sum37);

dfflip1 w39(clk,rst,sum34,sum38);
dfflip1 w40(clk,rst,sum38,sum39);
assign m40=sum39*h40;

multiplx w41(m40,16'b0,1'b1,sum40);
assign res8=sum37+sum40;
dfflip w42(clk,rst,res8,sum41);

multiplx w43(sum37,sum41,1'b0,sum42);

dfflip1 w44(clk,rst,sum39,sum43);
dfflip1 w45(clk,rst,sum43,sum44);
assign m41=sum44*h41;

multiplx w46(m41,16'b0,1'b0,sum45);
assign res9=sum42+sum45;
dfflip w47(clk,rst,res9,sum46);

multiplx w48(sum42,sum46,1'b0,sum47);

dfflip1 w49(clk,rst,sum44,sum48);
dfflip1 w50(clk,rst,sum48,sum49);
assign m42=sum49*h42;

multiplx w51(m42,16'b0,1'b1,sum50);
assign res10=sum47-sum50;
dfflip w52(clk,rst,res10,sum51);

multiplx w53(sum47,sum51,1'b0,sum52);

dfflip1 w54(clk,rst,sum49,sum53);
dfflip1 w55(clk,rst,sum53,sum54);
assign m43=sum54*h43;

multiplx w56(m43,16'b0,1'b0,sum55);
assign res11=sum52+sum55;
dfflip w57(clk,rst,res11,sum56);

multiplx w58(sum52,sum56,1'b0,sum57);


dfflip1 w59(clk,rst,sum54,sum58);
dfflip1 w60(clk,rst,sum58,sum59);
assign m44=sum59*h44;

multiplx w61(m44,16'b0,1'b1,sum60);
assign res12=sum57+sum60;
dfflip w62(clk,rst,res12,sum61);

multiplx w63(sum57,sum61,1'b0,sum62);

dfflip1 w64(clk,rst,sum59,sum63);
dfflip1 w65(clk,rst,sum63,sum64);
assign m45=sum64*h45;

multiplx w66(m45,16'b0,1'b0,sum65);
assign res13=sum62+sum65;
dfflip w67(clk,rst,res13,sum66);

multiplx w68(sum62,sum66,1'b0,sum67);

dfflip1 w69(clk,rst,sum64,sum68);
dfflip1 w70(clk,rst,sum68,sum69);
assign m46=sum69*h46;

multiplx w71(m46,16'b0,1'b1,sum70);
assign res14=sum67-sum70;
dfflip w72(clk,rst,res14,sum71);

multiplx w73(sum67,sum71,1'b0,sum72);

dfflip1 w74(clk,rst,sum69,sum73);
dfflip1 w75(clk,rst,sum73,sum74);
assign m47=sum74*h47;

multiplx w76(m47,16'b0,1'b0,sum75);
assign res15=sum72+sum75;
dfflip w77(clk,rst,res15,sum76);

multiplx w78(sum72,sum76,1'b0,sum77);

dfflip1 w79(clk,rst,sum74,sum78);
dfflip1 w80(clk,rst,sum78,sum79);
assign m48=sum79*h48;  
      
multiplx s1(m48,16'b0,1'b1,sums0);
assign res16=sum77+sums0;
dfflip s2(clk,rst,res16,sums1);

multiplx s3(sum77,sums1,1'b0,sums2);

  
dfflip1 s4(clk,rst,sum79,sums3);
dfflip1 s5(clk,rst,sums3,sums4);
assign m49=sums4*h49;
multiplx s6(m49,16'b0,1'b0,sums5);
assign res17= sums2+sums5	;
dfflip s7(clk,rst,res17,sums6);  

multiplx s8(sums2,sums6,1'b0,sums7);
  
dfflip1 s9(clk,rst,sums4,sums8);
dfflip1 s10(clk,rst,sums8,sums9);
assign m50=sums9*h50; 
                
multiplx s11(m50,16'b0,1'b1,sums10);
assign res18=sums7-sums10;  
dfflip s12(clk,rst,res18,sums11);
        
multiplx s13(sums7,sums11,1'b0,sums12);
 
dfflip1 s14(clk,rst,sums9,sums13);
dfflip1 s15(clk,rst,sums13,sums14);
assign m51=sums14*h51;
                   
multiplx s16(m51,16'b0,1'b0,sums15);
assign res19=sums12+sums15;
dfflip s17(clk,rst,res19,sums16);

multiplx s18(sums12,sums16,1'b0,sums17);

dfflip1 s19(clk,rst,sums14,sums18);
dfflip1 s20(clk,rst,sums18,sums19);
assign m52=sums19*h52;

multiplx s21(m52,16'b0,1'b1,sums20);
assign res20=sums17+sums20;
dfflip s22(clk,rst,res20,sums21);

multiplx s23(sums17,sums21,1'b0,sums22);

dfflip1 s24(clk,rst,sums19,sums23);
dfflip1 s25(clk,rst,sums23,sums24);
assign m53=sums24*h53;

multiplx s26(m53,16'b0,1'b0,sums25);
assign res21=sums22+sums25;
dfflip s27(clk,rst,res21,sums26);

multiplx s28(sums22,sums26,1'b0,sums27);

dfflip1 s29(clk,rst,sums24,sums28);
dfflip1 s30(clk,rst,sums28,sums29);
assign m54=sums29*h54;

multiplx s31(m54,16'b0,1'b1,sums30);
assign res22=sums27-sums30;
dfflip s32(clk,rst,res22,sums31);

multiplx s33(sums27,sums31,1'b0,sums32);

dfflip1 s34(clk,rst,sums29,sums33);
dfflip1 s35(clk,rst,sums33,sums34);
assign m55=sums34*h55;

multiplx s36(m55,16'b0,1'b0,sums35);
assign res23=sums32+sums35;
dfflip s37(clk,rst,res23,sums36);

multiplx s38(sums32,sums36,1'b0,sums37);

dfflip1 s39(clk,rst,sums34,sums38);
dfflip1 s40(clk,rst,sums38,sums39);
assign m56=sums39*h56;

multiplx s41(m56,16'b0,1'b1,sums40);
assign res24=sums37+sums40;
dfflip s42(clk,rst,res24,sums41);

multiplx s43(sums37,sums41,1'b0,sums42);

dfflip1 s44(clk,rst,sums39,sums43);
dfflip1 s45(clk,rst,sums43,sums44);
assign m57=sums44*h57;

multiplx s46(m57,16'b0,1'b0,sums45);
assign res25=sums42+sums45;
dfflip s47(clk,rst,res25,sums46);

multiplx s48(sums42,sums46,1'b0,sums47);

dfflip1 s49(clk,rst,sums44,sums48);
dfflip1 s50(clk,rst,sums48,sums49);
assign m58=sums49*h58;

multiplx s51(m58,16'b0,1'b1,sums50);
assign res26=sums47-sums50;
dfflip s52(clk,rst,res26,sums51);

multiplx s53(sums47,sums51,1'b0,sums52);

dfflip1 s54(clk,rst,sums49,sums53);
dfflip1 s55(clk,rst,sums53,sums54);
assign m59=sums54*h59;

multiplx s56(m59,16'b0,1'b0,sums55);
assign res27=sums52+sums55;
dfflip s57(clk,rst,res27,sums56);

multiplx s58(sums52,sums56,1'b0,sums57);


dfflip1 s59(clk,rst,sums54,sums58);
dfflip1 s60(clk,rst,sums58,sums59);
assign m60=sums59*h60;

multiplx s61(m60,16'b0,1'b1,sums60);
assign res28=sums57+sums60;
dfflip s62(clk,rst,res28,sums61);

multiplx s63(sums57,sums61,1'b0,sums62);

dfflip1 s64(clk,rst,sums59,sums63);
dfflip1 s65(clk,rst,sums63,sums64);
assign m61=sums64*h61;

multiplx s66(m61,16'b0,1'b0,sums65);
assign res29=sums62+sums65;
dfflip s67(clk,rst,res29,sums66);
multiplx s68(sums62,sums66,1'b0,sums67);
dfflip1 s69(clk,rst,sums64,sums68);
dfflip1 s70(clk,rst,sums68,sums69);
assign m62=sums69*h62;
multiplx s71(m62,16'b0,1'b1,sums70);
assign res30=sums67-sums70;
dfflip s72(clk,rst,res30,sums71);
multiplx s73(sums67,sums71,1'b0,sums72);
dfflip1 s74(clk,rst,sums69,sums73);
dfflip1 s75(clk,rst,sums73,sums74);
assign m63=sums74*h63;
multiplx s76(m63,16'b0,1'b0,sums75);
assign res31=sums72+sums75;
dfflip s77(clk,rst,res31,sums76);
multiplx s78(sums72,sums76,1'b0,y);

endmodule
