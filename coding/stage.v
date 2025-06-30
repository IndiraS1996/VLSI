module stage(t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,x36r,x36i,x37r,x37i,x38r,x38i,x39r,x39i,x40r,x40i,x41r,x41i,x42r,x42i,x43r,x43i,x44r,x44i,x45r,x45i,x46r,x46i,x47r,x47i,x48r,x48i,x49r,x49i,x50r,x50i,x51r,x51i);
input [7:0]t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31;
wire signed[16:0]  a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,h0,h1,i0,i1,j0,j1,k0,k1,l0,l1,m0,m1,n0,n1,o0,o1,p0,p1,q0,q1;
wire signed [16:0] w0r,w0i,w1r,w1i,w2r,w2i,w3r,w3i,w4r,w4i,w5r,w5i,w6r,w6i,w7r,w7i,w8r,w8i,w9r,w9i,w10r,w10i,w11r,w11i,w12r,w12i,w13r,w13i,w14r,w14i,w15r,w15i;
output signed[16:0] x36r,x36i,x37r,x37i,x38r,x38i,x39r,x39i,x40r,x40i,x41r,x41i,x42r,x42i,x43r,x43i,x44r,x44i,x45r,x45i,x46r,x46i,x47r,x47i,x48r,x48i,x49r,x49i,x50r,x50i,x51r,x51i;


assign w0r=1;
assign w0i=0;
assign w1r=1;
assign w1i=0;
assign w2r=1;
assign w2i=0;
assign w3r=1;
assign w3i=0;
assign w4r=1;
assign w4i=0;
assign w5r=8'b11101101;    //0.928//
assign w5i=8'b10011110;    //-0.3828//
assign w6r=8'b10110101;    //0.7070//
assign w6i=8'b01001011;    //-0.707//
assign w7r=8'b01100010;    //0.3828//
assign w7i=8'b00010011;   //-0.9238//
assign w8r=1;
assign w8i=0;
assign w9r=8'b10110101;    //0.707//
assign w9i=8'b01001011;    //-0.707//
assign w10r=0;
assign w10i=8'b11111111;   //-1//
assign w11r=8'b01001011;   //-0.707//
assign w11i=8'b01001011;   //-0.707//
assign w12r=1;
assign w12i=0;
assign w13r=8'b01100010;   //0.3826//
assign w13i=8'b00010011;   //-0.9238//
assign w14r=8'b01001011;   //-0.707//
assign w14i=8'b01001011;   //-0.707//
assign w15r=8'b00010011;   //-0.9238//
assign w15i=8'b01100010;   //0.3826//  


//twiddle factor//
assign a0=(t0*w0r);
assign a1=(t1*w0i);
//assign y20=(a0|a1);
assign b0=(t2*w1r);
assign b1=(t3*w1i);
//assign y21=(b0|b1);
assign c0=(t4*w2r);
assign c1=(t5*w2i);
//assign y22=(c0|c1);
assign d0=(t6*w3r);
assign d1=(t7*w3i);
//assign y23=(d0|d1);
assign e0=(t8*w4r);
assign e1=(t9*w4i);
//assign y24=(e0|e1);
assign f0=(t10 * w5r);
assign f1=(t11 * w5i);
//assign y25=(f0|f1);
assign h0=(t12*w6r);
assign h1=(t13*w6i);
//assign y26=(h0|h1);
assign i0=(t14*w7r);
assign i1=(t15*w7i);
//assign y27=(i0|i1);
assign j0=(t16*w8r);
assign j1=(t17*w8i);
//assign y28=(j0|j1);
assign k0=(t18*w9r);
assign k1=(t19*w9i);
//assign y29=(k0|k1);
assign l0=(t20*w10r);
assign l1=(t21*w10i);
//assign y30=(l0|l1);
assign m0=(t22*w11r);
assign m1=(t23*w11i);
//assign y31=(m0|m1);
assign n0=(t24*w12r);
assign n1=(t25*w12i);
//assign y32=(n0|n1);
assign o0=(t26*w13r);
assign o1=(t27*w13i);
//assign y33=(o0|o1);
assign p0=(t28*w14r);
assign p1=(t29*w14i);
//assign y34=(p0|p1);
assign q0=(t30*w15r);
assign q1=(t31*w15i);
//assign y35=(q0|q1);

//last module//

butterfly111 w1(a0,a1,b0,b1,c0,c1,d0,d1,x36r,x36i);
butterfly111 w2(e0,e1,f0,f1,h0,h1,i0,i1,x37r,x37i);
butterfly111 w3(j0,j1,k0,k1,l0,l1,m0,m1,x38r,x38i);
butterfly111 w4(n0,n1,o0,o1,p0,p1,q0,q1,x39r,x39i);

butterfly222 s1(a0,a1,b0,b1,c0,c1,d0,d1,x40r,x40i);
butterfly222 s2(e0,e1,f0,f1,h0,h1,i0,i1,x41r,x41i);
butterfly222 s3(j0,j1,k0,k1,l0,l1,m0,m1,x42r,x42i);
butterfly222 s4(n0,n1,o0,o1,p0,p1,q0,q1,x43r,x43i);

butterfly333 u1(a0,a1,b0,b1,c0,c1,d0,d1,x44r,x44i);
butterfly333 u2(e0,e1,f0,f1,h0,h1,i0,i1,x45r,x45i);
butterfly333 u3(j0,j1,k0,k1,l0,l1,m0,m1,x46r,x46i);
butterfly333 u4(n0,n1,o0,o1,p0,p1,q0,q1,x47r,x47i);

butterfly444 v1(a0,a1,b0,b1,c0,c1,d0,d1,x48r,x48i);
butterfly444 v2(e0,e1,f0,f1,h0,h1,i0,i1,x49r,x49i);
butterfly444 v3(j0,j1,k0,k1,l0,l1,m0,m1,x50r,x50i);
butterfly444 v4(n0,n1,o0,o1,p0,p1,q0,q1,x51r,x51i); 



endmodule
