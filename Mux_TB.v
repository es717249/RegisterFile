module Mux_TB;
	parameter WORD_LENGTH = 32;
	parameter NBITS = CeilLog2(WORD_LENGTH);
	reg [NBITS-1 : 0]Selector;
	reg [WORD_LENGTH-1 : 0] Data_0;
	reg [WORD_LENGTH-1 : 0] Data_1;
	reg [WORD_LENGTH-1 : 0] Data_2;
	reg [WORD_LENGTH-1 : 0] Data_3;
	reg [WORD_LENGTH-1 : 0] Data_4;
	reg [WORD_LENGTH-1 : 0] Data_5;
	reg [WORD_LENGTH-1 : 0] Data_6;
	reg [WORD_LENGTH-1 : 0] Data_7;
	reg [WORD_LENGTH-1 : 0] Data_8;
	reg [WORD_LENGTH-1 : 0] Data_9;
	reg [WORD_LENGTH-1 : 0] Data_10;
	reg [WORD_LENGTH-1 : 0] Data_11;
	reg [WORD_LENGTH-1 : 0] Data_12;
	reg [WORD_LENGTH-1 : 0] Data_13;
	reg [WORD_LENGTH-1 : 0] Data_14;
	reg [WORD_LENGTH-1 : 0] Data_15;
	reg [WORD_LENGTH-1 : 0] Data_16;
	reg [WORD_LENGTH-1 : 0] Data_17;
	reg [WORD_LENGTH-1 : 0] Data_18;
	reg [WORD_LENGTH-1 : 0] Data_19;
	reg [WORD_LENGTH-1 : 0] Data_20;
	reg [WORD_LENGTH-1 : 0] Data_21;
	reg [WORD_LENGTH-1 : 0] Data_22;
	reg [WORD_LENGTH-1 : 0] Data_23;
	reg [WORD_LENGTH-1 : 0] Data_24;
	reg [WORD_LENGTH-1 : 0] Data_25;
	reg [WORD_LENGTH-1 : 0] Data_26;
	reg [WORD_LENGTH-1 : 0] Data_27;
	reg [WORD_LENGTH-1 : 0] Data_28;
	reg [WORD_LENGTH-1 : 0] Data_29;
	reg [WORD_LENGTH-1 : 0] Data_30;
	reg [WORD_LENGTH-1 : 0] Data_31;
	
	// Output Ports
	wire [WORD_LENGTH-1 : 0] Mux_Output;

Mux32to1
#(
	.WORD_LENGTH(WORD_LENGTH)	
)
DUV(
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
	.Data_31(Data_31),
	.Mux_Output(Mux_Output)
);

initial begin
	 Selector = 5'd3;
	 Data_0= 32'd0;
	 Data_1= 32'd1;
	 Data_2= 32'd2;
	 Data_3= 32'd3;
	 Data_4= 32'd4;
	 Data_5= 32'd5;
	 Data_6= 32'd6;
	 Data_7= 32'd7;
	 Data_8= 32'd8;
	 Data_9= 32'd9;
	 Data_10= 32'd10 ;
	 Data_11= 32'd11 ;
	 Data_12= 32'd12 ;
	 Data_13= 32'd13 ;
	 Data_14= 32'd14 ;
	 Data_15= 32'd15 ;
	 Data_16= 32'd16 ;
	 Data_17= 32'd17 ;
	 Data_18= 32'd18 ;
	 Data_19= 32'd19 ;
	 Data_20= 32'd20 ;
	 Data_21= 32'd21 ;
	 Data_22= 32'd22 ;
	 Data_23= 32'd23;
	 Data_24= 32'd24 ;
	 Data_25= 32'd25 ;
	 Data_26= 32'd26  ;
	 Data_27= 32'd27  ;
	 Data_28= 32'd28  ;
	 Data_29= 32'd29  ;
	 Data_30= 32'd30  ;
	 Data_31= 32'd31  ;
	 
	 #4 Selector = 5'd5;
	 #4 Selector = 5'd16;
	 #4 Selector = 5'd25;
	 
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