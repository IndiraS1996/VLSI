module butterfly22(q,s,x,y,zr,zi);
input[7:0] q,s,x,y;
output signed[7:0] zr,zi; 
wire signed[7:0] e,f,g,h,i,j,k,n,a,b;
//wire[32:0] a,b,c,d;
wire signed [7:0]t1r,t1i,t5r,t5i,t9r,t9i,t13r,t13i;
assign t1r=1;
assign t1i=0;
assign t5r=0;
assign t5i=1;
assign t9r=1;
assign t9i=0;
assign t13r=0;
assign t13i=1;

assign e=(q*t1r);
assign f=(q*t1i);
 // assign a=(e);
 assign g=(s*t5r);
assign h=(s*t5i);
//assign a=(e+g);
//assign b=(f+h);
 //assign b=(h);
assign i=(x*t9r);
assign j=(x*t9i);

assign k=(y * t13r);
assign n=(y * t13i);
//assign c=(i+k);
//assign d=(j+n);
 assign zr=(e+g-i+k);
 assign zi=(~(f-h+j+n)+1);
endmodule
