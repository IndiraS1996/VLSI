module butterfly222(p,q,r,s,t,u,v,w,zr,zi);
input signed[16:0] p,q,r,s,t,u,v,w;
output signed [16:0]zr,zi; 
wire signed[16:0]e,f,g,h,i,j,k,n;

wire signed [7:0]t1r,t1i,t5r,t5i,t9r,t9i,t13r,t13i;
assign t1r=1;
assign t1i=0;
assign t5r=0;
assign t5i=1;
assign t9r=1;
assign t9i=0;
assign t13r=0;
assign t13i=1;

assign e=(p*t1r);
assign f=(q*t1i);
 // assign a=(e);
 assign g=(r*t5r);
assign h=(s*t5i);
//assign a=(e+g);
//assign b=(f+h);
 //assign b=(h);
assign i=(t*t9r);
assign j=(u*t9i);

assign k=(v * t13r);
assign n=(w * t13i);
//assign c=(i+k);
//assign d=(j+n);
 assign zr=(e+g-i+k);
 assign zi=(f-h+j+n);

endmodule