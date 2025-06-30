module sine(Clk,data_out);
    input Clk;
    output reg[7:0] data_out;  
    reg [7:0] sine [0:127];  
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
        sine[33] = 16;
        sine[34] = 58;
        sine[35] = 74;
		  sine[36] = 74;
        sine[37] = 58;
        sine[38] = 16;
        sine[39] = 0;
        sine[40] = 0;
        sine[41] = -16;
        sine[42] = -58;
        sine[43] = -74;
        sine[44] = -74;
        sine[45] = -58;
        sine[46] = -16;
        sine[47] = 0;
        
		  sine[48] = 0;
		  sine[49] = 16;
        sine[50] = 58;
        sine[51] = 74;
        sine[52] = 74;
        sine[53] = 58;
        sine[54] = 16;
        sine[55] = 0;
        sine[56] = 0;
        sine[57] = -16;
        sine[58] = -58;
        sine[59] = -74;
        sine[60] = -74;
        sine[61] = -58;
		  sine[62]=-16;
		  sine[63]=0;
		  sine[64] = 0;
        sine[65] = 0;
        sine[66] = 0;
        sine[67] = 0;
		  sine[68] = 0;
        sine[69] = 0;
        sine[70] = 0;
        sine[71] = 0;
        sine[72] = 0;
        sine[73] = 0;
        sine[74] = 0;
        sine[75] = 0;
        sine[76] = 0;
        sine[77] = 0;
        sine[78] = 0;
        sine[79] = 0;
        
		  sine[80] = 0;
		  sine[81] = 0;
        sine[82] = 0;
        sine[83] = 0;
        sine[84] = 0;
        sine[85] = 0;
		  sine[86] = 0;
        sine[87] = 0;
        sine[88] = 0;
        sine[89] = 0;
        sine[90] = 0;
        sine[91] = 0;
        sine[92] = 0;
        sine[93] = 0;
        sine[94] = 0;
        sine[95] = 0;
		  sine[96] = 0;
        sine[97] = 0;
        sine[98] = 0;
        sine[99] = 0;
		  sine[100] = 0;
        sine[101] = 0;
        sine[102] = 0;
        sine[103] = 0;
        sine[104] = 0;
        sine[105] = 0;
        sine[106] = 0;
        sine[107] = 0;
        sine[108] = 0;
        sine[109] = 0;
        sine[110] = 0;
        sine[111] = 0;
        
		  sine[112] = 0;
		  sine[113] = 0;
        sine[114] = 0;
        sine[115] = 0;
        sine[116] = 0;
        sine[117] = 0;
		  sine[118] = 0;
        sine[119] = 0;
        sine[120] = 0;
        sine[121] = 0;
        sine[122] = 0;
        sine[123] = 0;
        sine[124] = 0;
        sine[125] = 0;
        sine[126] = 0;
        sine[127] = 0;
        
		  
		  
		 
    end

always@ (posedge(Clk))
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 127)
           i = 0;
    end


endmodule
