module Register_TB;

	parameter WORD_LENGTH = 32;
	reg clk=0;
	reg reset;
	reg enable;
	reg [WORD_LENGTH-1 : 0] Data_Input;

	// Output Ports
	wire [WORD_LENGTH-1 : 0] Data_Output;
	
	Register
	#(
		.WORD_LENGTH(WORD_LENGTH)
	)DUV(
		// Input Ports
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.Data_Input(Data_Input),	

		// Output Ports
		.Data_Output(Data_Output)
	);

initial begin 
	forever #1 clk=!clk;
end

initial begin
	#0 reset =0;
	#0 enable=0;
	#5 reset =1;
	#0 enable=1;
	
	#0 Data_Input = 32'd15;
	
end

endmodule
