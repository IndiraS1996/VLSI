module sine(Clk,data_out);
    input Clk;
    output reg[7:0] data_out;  
    reg [7:0] sine [0:31];  
    integer i;  
    //reg [5:0] data_out;  
    initial begin
        i = 0;
        sine[0] = 0;
        sine[1] = 16;
        sine[2] = 58;
        sine[3] = 74;
		  sine[4] = 74;
        sine[5] = 58;
        sine[6] = 16;
        sine[7] = 0;
        sine[8] = 0;
        sine[9] = -16;
        sine[10] = -58;
        sine[11] = -74;
        sine[12] = -74;
        sine[13] = -58;
        sine[14] = -16;
        sine[15] = 0;
        sine[16] = 0;
		  
        sine[17] = 0;
        sine[18] = 0;
        sine[19] = 0;
        sine[20] = 0;
        sine[21] = 0;
        sine[22] = 0;
        sine[23] = 0;
        sine[24] = 0;
        sine[25] = 0;
        sine[26] = 0;
        sine[27] = 0;
        sine[28] = 0;
        sine[29] = 0;
		  sine[30]=0;
		  sine[31]=0;
		 
    end

always@ (posedge(Clk))
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 31)
           i = 0;
    end


endmodule

