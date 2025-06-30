module butterfly44(q,s,x,y,zr,zi);
input[7:0] q,s,x,y;
output signed[7:0]zr,zi; 
wire signed [7:0]e,f,g,h,i,j,k,n;
//wire [32:0]a,b,c,d;
wire signed[15:0]t3r,t3i,t7r,t7i,t11r,t11i,t15r,t15i;
assign t3r=1;
assign t3i=0;
assign t7r=0;
assign t7i=1;
assign t11r=1;
assign t11i=0;
assign t15r=0;
assign t15i=1;

assign e=(q*t3r);
assign f=(q*t3i);
 // assign a=(e+f);
assign g=(s*t7r);
assign h=(s*t7i);
 //assign b=(g+h);
assign i=(x*t11r);
assign j=(x*t11i);
  //assign c=(i+j);
assign k=(y * t15r);
assign n=(y * t15i);
   //assign d=(k+n);
  assign zr=e+g-i+k;
  assign zi=f+h+j-n;
  
endmodule
