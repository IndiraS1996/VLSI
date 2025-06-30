module butterfly444(p,q,r,s,t,u,v,w,zr,zi);
input signed[16:0] p,q,r,s,t,u,v,w;
output signed [16:0]zr,zi; 
wire signed[16:0]e,f,g,h,i,j,k,n;

wire signed[15:0]t3r,t3i,t7r,t7i,t11r,t11i,t15r,t15i;
assign t3r=1;
assign t3i=0;
assign t7r=0;
assign t7i=1;
assign t11r=1;
assign t11i=0;
assign t15r=0;
assign t15i=1;

assign e=(p*t3r);
assign f=(q*t3i);
 // assign a=(e+f);
assign g=(r*t7r);
assign h=(s*t7i);
 //assign b=(g+h);
assign i=(t*t11r);
assign j=(u*t11i);
  //assign c=(i+j);
assign k=(v* t15r);
assign n=(w * t15i);
   //assign d=(k+n);
  assign zr=e+g-i+k;
  assign zi=f+h+j-n;
endmodule

