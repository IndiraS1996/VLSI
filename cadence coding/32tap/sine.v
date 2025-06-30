module sine(Clk,data_out);
    input Clk;
    output reg[7:0] data_out;  
    reg [7:0] sine [0:63];  
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
		  sine[17] = 16;
        sine[18] = 58;
        sine[19] = 74;
        sine[20] = 74;
        sine[21] = 58;
        sine[22] = 16;
        sine[23] = 0;
        sine[24] = 0;
        sine[25] = -16;
        sine[26] = -58;
        sine[27] = -74;
        sine[28] = -74;
        sine[29] = -58;
		  sine[30]=-16;
		  sine[31]=0;
		  sine[32] = 0;
        sine[33] = 0;
        sine[34] = 0;
        sine[35] = 0;
		  sine[36] = 0;
        sine[37] = 0;
        sine[38] = 0;
        sine[39] = 0;
        sine[40] = 0;
        sine[41] = 0;
        sine[42] = 0;
        sine[43] = 0;
        sine[44] = 0;
        sine[45] = 0;
        sine[46] = 0;
        sine[47] = 0;
        
		  sine[48] = 0;
		  sine[49] = 0;
        sine[50] = 0;
        sine[51] = 0;
        sine[52] = 0;
        sine[53] = 0;
		  sine[54] = 0;
        sine[55] = 0;
        sine[56] = 0;
        sine[57] = 0;
        sine[58] = 0;
        sine[59] = 0;
        sine[60] = 0;
        sine[61] = 0;
        sine[62] = 0;
        sine[63] = 0;
        
		  
		  
		 
    end

always@ (posedge(Clk))
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 63)
           i = 0;
    end


endmodule
