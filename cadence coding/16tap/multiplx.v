module multiplx(a,b,sel,out );
input[15:0]a,b;
input sel;
output reg[15:0]out;
always@(*)
begin
if(sel==1'b1)
out=a;
else
out=b;
end
endmodule

