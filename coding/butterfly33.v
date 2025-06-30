module butterfly33(q,s,x,y,zr,zi);
input [7:0] q,s,x,y;
output signed [7:0]zr,zi; 
wire signed [7:0]e,f,g,h,i,j,k,n;
//wire [32:0]a,b,c,d;
wire signed [7:0] t2r,t2i,t6r,t6i,t10r,t10i,t14r,t14i;
assign t2r=1;
assign t2i=0;
assign t6r=1;
assign t6i=0;
assign t10r=1;
assign t10i=0;
assign t14r=1;
assign t14i=0;


assign e=(q*t2r);
assign f=(q*t2i);
  //assign a=(e+f);
assign g=(s*t6r);
assign h=(s*t6i);
//assign b=(g|h);
assign i=(x*t10r);
assign j=(x*t10i);
  //assign c=(i|j);
assign k=(y * t14r);
assign n=(y * t14i);
//assign d=(k|n);
assign zr=e-g+i-k;
assign zi=f+h+j+n;
endmodule
