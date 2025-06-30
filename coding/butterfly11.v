module butterfly11(q,s,x,y,zr,zi);
input [7:0] q,s,x,y;
output [7:0] zr,zi; 
wire [7:0] e,f,g,h,i,j,k,n;
//wire [32:0] a,b,c,d;
wire [7:0] t0r,t0i,t4r,t4i,t8r,t8i,t12r,t12i;
assign t0r=1;
assign t0i=0;
assign t4r=1;
assign t4i=0;
assign t8r=1;
assign t8i=0;
assign t12r=1;
assign t12i=0;


assign e=(q*t0r);
assign f=(q*t0i);
  //assign a=(e+f);
assign g=(s*t4r);
assign h=(s*t4i);
 //assign b=(g+h);
assign i=(x*t8r);
assign j=(x*t8i);
 // assign c=(i+j);
assign k=(y * t12r);
assign n=(y * t12i);
//assign d=(k+n);
assign zr=e+g+i+k;
assign zi=f+h+j+n;
endmodule
