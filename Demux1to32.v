module Demux1to32
#(
	parameter WORD_LENGTH = 32,
	parameter NBITS = CeilLog2(WORD_LENGTH)
)
(

	// Input Ports
	input [WORD_LENGTH-1 : 0] Demux_Input,
	input [NBITS-1 : 0] Selector,	
	
	// output Ports
	output reg [WORD_LENGTH-1 : 0] Data_0,
	output reg [WORD_LENGTH-1 : 0] Data_1,
	output reg [WORD_LENGTH-1 : 0] Data_2,
	output reg [WORD_LENGTH-1 : 0] Data_3,
	output reg [WORD_LENGTH-1 : 0] Data_4,
	output reg [WORD_LENGTH-1 : 0] Data_5,
	output reg [WORD_LENGTH-1 : 0] Data_6,
	output reg [WORD_LENGTH-1 : 0] Data_7,
	output reg [WORD_LENGTH-1 : 0] Data_8,
	output reg [WORD_LENGTH-1 : 0] Data_9,
	output reg [WORD_LENGTH-1 : 0] Data_10,
	output reg [WORD_LENGTH-1 : 0] Data_11,
	output reg [WORD_LENGTH-1 : 0] Data_12,
	output reg [WORD_LENGTH-1 : 0] Data_13,
	output reg [WORD_LENGTH-1 : 0] Data_14,
	output reg [WORD_LENGTH-1 : 0] Data_15,
	output reg [WORD_LENGTH-1 : 0] Data_16,
	output reg [WORD_LENGTH-1 : 0] Data_17,
	output reg [WORD_LENGTH-1 : 0] Data_18,
	output reg [WORD_LENGTH-1 : 0] Data_19,
	output reg [WORD_LENGTH-1 : 0] Data_20,
	output reg [WORD_LENGTH-1 : 0] Data_21,
	output reg [WORD_LENGTH-1 : 0] Data_22,
	output reg [WORD_LENGTH-1 : 0] Data_23,
	output reg [WORD_LENGTH-1 : 0] Data_24,
	output reg [WORD_LENGTH-1 : 0] Data_25,
	output reg [WORD_LENGTH-1 : 0] Data_26,
	output reg [WORD_LENGTH-1 : 0] Data_27,
	output reg [WORD_LENGTH-1 : 0] Data_28,
	output reg [WORD_LENGTH-1 : 0] Data_29,
	output reg [WORD_LENGTH-1 : 0] Data_30,
	output reg [WORD_LENGTH-1 : 0] Data_31
);

 always@(Selector, Demux_Input) begin
	case(Selector)
		5'd0 :  Data_0 = Demux_Input;
		5'd1 :  Data_1 = Demux_Input;
		5'd2 :  Data_2 = Demux_Input;
		5'd3 :  Data_3 = Demux_Input;
		5'd4 :  Data_4 = Demux_Input;
		5'd5 :  Data_5 = Demux_Input;
		5'd6 :  Data_6 = Demux_Input;
		5'd7 :  Data_7 = Demux_Input;
		5'd8 :  Data_8 = Demux_Input;
		5'd9 :  Data_9 = Demux_Input;
		5'd10 : Data_10 = Demux_Input;
		5'd11 : Data_11 = Demux_Input;
		5'd12 : Data_12 = Demux_Input;
		5'd13 : Data_13 = Demux_Input;
		5'd14 : Data_14 = Demux_Input;
		5'd15 : Data_15 = Demux_Input;
		5'd16 : Data_16 = Demux_Input;
		5'd17 : Data_17 = Demux_Input;
		5'd18 : Data_18 = Demux_Input;
		5'd19 : Data_19 = Demux_Input;
		5'd20 : Data_20 = Demux_Input;
		5'd21 : Data_21 = Demux_Input;
		5'd22 : Data_22 = Demux_Input;
		5'd23 : Data_23 = Demux_Input;
		5'd24 : Data_24 = Demux_Input;
		5'd25 : Data_25 = Demux_Input;
		5'd26 : Data_26 = Demux_Input;
		5'd27 : Data_27 = Demux_Input;
		5'd28 : Data_28 = Demux_Input;
		5'd29 : Data_29 = Demux_Input;
		5'd30 : Data_30 = Demux_Input;
		5'd31 : Data_31 = Demux_Input;
	 default: Data_0 = Demux_Input;
	endcase
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
