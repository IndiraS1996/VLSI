module icdm(clk,rst,y);
input clk,rst;
output [11:0]y;
wire [11:0]m0,m1,m2,m3;
wire [5:0]data_out;
wire [11:0] out1,out2,out5,out6,out7,out10,out11,out12,out15,out16,add1,add2,add3;
wire [5:0] out3,out4,out8,out9,out13,out14;
parameter h3=6'b0100;
parameter h2=6'b0110;
parameter h1=6'b0110;
parameter h0=6'b0100;

sine u1(clk,data_out);

assign m0=data_out*h3;        // 1100
multiplx u2(m0,12'b0,1'b1,out1);
dfflip u3(clk,rst,out1,out2);

  
dfflip1 u4(clk,rst,data_out,out3);
dfflip1 u5(clk,rst,out3,out4);
assign m1=out4*h2;
multiplx u6(m1,12'b0,1'b0,out5);
assign add1= out5+out2	;
dfflip u7(clk,rst,add1,out6);  

multiplx u8(out2,out6,1'b0,out7);
  
dfflip1 u9(clk,rst,out4,out8);
dfflip1 u10(clk,rst,out8,out9);
assign m2=out9*h1; 
                
multiplx u11(m2,12'b0,1'b1,out10);
assign add2=out7+out10;  
dfflip u12(clk,rst,add2,out11);
        
multiplx u13(out7,out11,1'b0,out12);
 
dfflip1 u14(clk,rst,out9,out13);
dfflip1 u15(clk,rst,out13,out14);
assign m3=out14*h0;
                   
multiplx u16(m3,12'b0,1'b0,out15);
assign add3=out12+out15;
dfflip u17(clk,rst,add3,out16);

multiplx u18(out12,out16,1'b0,y);



endmodule


module dfflip(clk,rst,d,q);
input clk;
input rst;
input [11:0] d;
output reg [11:0] q;
always @ (posedge clk)
begin
if(rst==1)
q<=8'b0;
else
q<=d;
end 
endmodule

module dfflip1(clk,rst,d,q);
input clk;
input rst;
input [5:0] d;
output reg [5:0] q;
always @ (posedge clk)
begin
if(rst==1)
q<=6'b0;
else
q<=d;
end 
endmodule


module sine(Clk,data_out);
    input Clk;
    output reg[5:0] data_out;  
    reg [5:0] sine [0:6];  
    integer i;  
    //reg [5:0] data_out;  
    initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 16;
        sine[2] = 31;
        sine[3] = 45;
		  sine[4] = 0;
		  sine[5] = 0;
		  sine[6] =0;
        /*sine[4] = 58;
        sine[5] = 67;
        sine[6] = 74;
        sine[7] = 77;
        sine[8] = 77;
        sine[9] = 74;
        sine[10] = 67;
        sine[11] = 58;
        sine[12] = 45;
        sine[13] = 31;
        sine[14] = 16;
        sine[15] = 0;
        sine[16] = -16;
        sine[17] = -31;
        sine[18] = -45;
        sine[19] = -58;
        sine[20] = -67;
        sine[21] = -74;
        sine[22] = -77;
        sine[23] = -77;
        sine[24] = -74;
        sine[25] = -67;
        sine[26] = -58;
        sine[27] = -45;
        sine[28] = -31;
        sine[29] = -16;*/
		 
    end

    always@ (posedge(Clk))
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 6)
           i = 0;
    end


endmodule

module multiplx(a,b,sel,out );
input[11:0]a,b;
input sel;
output reg[11:0]out;
always@(*)
begin
if(sel==1'b1)
out=a;
else
out=b;
end
endmodule

