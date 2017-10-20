module demux1to32_TB;
	parameter WORD_LENGTH = 32;
	parameter NBITS = CeilLog2(WORD_LENGTH);
	
	reg [NBITS-1 : 0]Selector;
	reg [WORD_LENGTH-1 : 0] Demux_Input;
	
	wire [WORD_LENGTH-1 : 0] Data_0;
	wire [WORD_LENGTH-1 : 0] Data_1;
	wire [WORD_LENGTH-1 : 0] Data_2;
	wire [WORD_LENGTH-1 : 0] Data_3;
	wire [WORD_LENGTH-1 : 0] Data_4;
	wire [WORD_LENGTH-1 : 0] Data_5;
	wire [WORD_LENGTH-1 : 0] Data_6;
	wire [WORD_LENGTH-1 : 0] Data_7;
	wire [WORD_LENGTH-1 : 0] Data_8;
	wire [WORD_LENGTH-1 : 0] Data_9;
	wire [WORD_LENGTH-1 : 0] Data_10;
	wire [WORD_LENGTH-1 : 0] Data_11;
	wire [WORD_LENGTH-1 : 0] Data_12;
	wire [WORD_LENGTH-1 : 0] Data_13;
	wire [WORD_LENGTH-1 : 0] Data_14;
	wire [WORD_LENGTH-1 : 0] Data_15;
	wire [WORD_LENGTH-1 : 0] Data_16;
	wire [WORD_LENGTH-1 : 0] Data_17;
	wire [WORD_LENGTH-1 : 0] Data_18;
	wire [WORD_LENGTH-1 : 0] Data_19;
	wire [WORD_LENGTH-1 : 0] Data_20;
	wire [WORD_LENGTH-1 : 0] Data_21;
	wire [WORD_LENGTH-1 : 0] Data_22;
	wire [WORD_LENGTH-1 : 0] Data_23;
	wire [WORD_LENGTH-1 : 0] Data_24;
	wire [WORD_LENGTH-1 : 0] Data_25;
	wire [WORD_LENGTH-1 : 0] Data_26;
	wire [WORD_LENGTH-1 : 0] Data_27;
	wire [WORD_LENGTH-1 : 0] Data_28;
	wire [WORD_LENGTH-1 : 0] Data_29;
	wire [WORD_LENGTH-1 : 0] Data_30;
	wire [WORD_LENGTH-1 : 0] Data_31;

Demux1to32
#(
	.WORD_LENGTH(WORD_LENGTH)	
)
DUV(
	.Demux_Input(Demux_Input),
	.Selector(Selector),
	.Data_0(Data_0),
	.Data_1(Data_1),
	.Data_2(Data_2),
	.Data_3(Data_3),
	.Data_4(Data_4),
	.Data_5(Data_5),
	.Data_6(Data_6),
	.Data_7(Data_7),
	.Data_8(Data_8),
	.Data_9(Data_9),
	.Data_10(Data_10),	
	.Data_11(Data_11),
	.Data_12(Data_12),
	.Data_13(Data_13),
	.Data_14(Data_14),
	.Data_15(Data_15),
	.Data_16(Data_16),
	.Data_17(Data_17),
	.Data_18(Data_18),
	.Data_19(Data_19),
	.Data_20(Data_20),	
	.Data_21(Data_21),
	.Data_22(Data_22),
	.Data_23(Data_23),
	.Data_24(Data_24),
	.Data_25(Data_25),
	.Data_26(Data_26),
	.Data_27(Data_27),
	.Data_28(Data_28),
	.Data_29(Data_29),
	.Data_30(Data_30),	
	.Data_31(Data_31)
);

initial begin
	 
	 #5 Selector = 5'd3;
	 #1 Demux_Input = 32'd25;
	 
	 #5 Selector = 5'd10;
	 
	 #5 Selector = 5'd30;
	 
	 
end


  /*Log Function*/
     function integer CeilLog2;
       input integer data;
       integer i,result;
       begin
          for(i=0; 2**i < data; i=i+1)
             result = i + 1;
          CeilLog2 = result;
       end
    endfunction


endmodule