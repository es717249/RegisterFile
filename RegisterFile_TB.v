module RegisterFile_TB;

	parameter WORD_LENGTH =32;
	parameter NBITS = CeilLog2(WORD_LENGTH);
	
	reg clk=0;
	reg reset;
	reg [NBITS-1 : 0]Read_Reg1;
	reg [NBITS-1 : 0]Read_Reg2;
	reg [NBITS-1 : 0]Write_Reg;
	reg [WORD_LENGTH-1 : 0] Write_Data;
	reg Write;
	
	wire[WORD_LENGTH-1 : 0] Read_Data1;
	wire [WORD_LENGTH-1 : 0] Read_Data2;
	
	
	Register_File
	#(
		.WORD_LENGTH(WORD_LENGTH)
	)DUV(
		.clk(clk),
		.reset(reset),
		.Read_Reg1(Read_Reg1),
		.Read_Reg2(Read_Reg2),
		.Write_Reg(Write_Reg),
		.Write_Data(Write_Data),
		.Write(Write),
		.Read_Data1(Read_Data1),
		.Read_Data2(Read_Data2)		
	);
	
	initial begin
		forever #1 clk=!clk;
	end
	
	initial begin
		#0 reset =0;
		#0 Write =0;

		#4 reset =1;
		#0 Read_Reg1 = 5'd0;	
		#0 Read_Reg2 = 5'd0;			
		
		#0 Write =1;
		#0 Write_Data =32'hFEFEFEFE;
		#0 Write_Reg = 5'd5; //write to Reg #5 out of 32
		#2	Write=0;		//disable writing

		#5 Read_Reg1 = 5'd4; //By reading reg 4 we should expect 0 since we haven't saved anything		
		#0 Read_Reg2 = 5'd3; //By reading reg 3 we should expect 0 since we haven't saved anything
		

		#5 Read_Reg2 = 5'd5; //By reading reg 5 we should expect the stored value

		#5 Write_Data =32'hABABABAB;
		#0 Write =1;
		#0 Write_Reg = 5'd4; //write to Reg #5 out of 32
		#0 Read_Reg1 = 5'd4;	//read a diff reg
		#0 Read_Reg2 = 5'd5;//read a diff reg

		#3 Write_Data =32'hCECECECE;
		#0 Write_Reg = 5'd3; //write to Reg #5 out of 32
		#2 Write =0;

		#3 Read_Reg1 = 5'd4;	//read stored info
		#4 Read_Reg2 = 5'd3; //read stored info
		
		
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