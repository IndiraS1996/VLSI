module newfft(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,clock,select,address, u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15);
input [7:0]x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
input clock;
input[1:0]select,address;
output[15:0]u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15;
wire [7:0]z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15;
wire[7:0] z16,z17,z18,z19,z20,z21,z22,z23,z24,z25,z26,z27,z28,z29,z30,z31;
wire[15:0]x36r,x36i,x37r,x37i,x38r,x38i,x39r,x39i,x40r,x40i,x41r,x41i,x42r,x42i,x43r,x43i,x44r,x44i,x45r,x45i,x46r,x46i,x47r,x47i,x48r,x48i,x49r,x49i,x50r,x50i,x51r,x51i;
wire [7:0] x20,x200,x21,x211,x22,x222,x23,x233,x24,x244,x25,x255,x26,x266,x27,x277,x28,x288,x29,x299,x30,x300,x31,x311,x32,x322,x33,x333,x34,x344,x35,x355;
fft  f1(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x20,x200,x21,x211,x22,x222,x23,x233,x24,x244,x25,x255,x26,x266,x27,x277,x28,x288,x29,x299,x30,x300,x31,x311,x32,x322,x33,x333,x34,x344,x35,x355);
ping p1(x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,clock,select,address,z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15);
stage s1(z0,z16,z1,z17,z2,z18,z3,z19,z4,z20,z5,z21,z6,z22,z7,z23,z8,z24,z9,z25,z10,z26,z11,z27,z12,z28,z13,z29,z14,z30,z15,z31,x36r,x36i,x37r,x37i,x38r,x38i,x39r,x39i,x40r,x40i,x41r,x41i,x42r,x42i,x43r,x43i,x44r,x44i,x45r,x45i,x46r,x46i,x47r,x47i,x48r,x48i,x49r,x49i,x50r,x50i,x51r,x51i);
ping p2(x36r,x37r,x38r,x39r,x40r,x41r,x42r,x43r,x44r,x45r,x46r,x47r,x48r,x49r,x50r,x51r,clock,select,address,u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15);
endmodule
