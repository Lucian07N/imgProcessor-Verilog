module pattGen2(
											//Lista de porturi
	output reg [2:0]	rgb_o2		,
	input  	[8:0]	row_i		,
	input  	[9:0]	colum_i	    
);

											// Lista de parametri
// Imaginea este 640X480 pixeli											// o treime din 640 de pixeli
localparam X0 = 80;	
localparam X1 = 160;											// doua treimi din 640 de pixeli
localparam X2 = 240;
localparam X3 = 320;
localparam X4 = 400;
localparam X5 = 480;
localparam X6 = 560;
localparam X7 = 640;
//rgb

localparam BLACK = 3'b000;
localparam BLUE = 3'b001;
localparam GREEN = 3'b010;
localparam RED 	 = 3'b100;
localparam CYAN = 3'b011;
localparam PURPLE = 3'b101;
localparam YELLOW = 3'b110;
localparam WHITE = 3'b111;

											//	Semnale interne




											//	Cod
											
always @(*)										
if(colum_i < X0)
							   rgb_o2 = BLUE  ;
		else if (colum_i < X1) rgb_o2 = GREEN ;
		else if (colum_i < X2) rgb_o2 = RED   ;
		else if (colum_i < X3) rgb_o2 = CYAN  ;
		else if (colum_i < X4) rgb_o2 = BLACK ;
		else if (colum_i < X5) rgb_o2 = YELLOW;
		else if (colum_i < X6) rgb_o2 = WHITE ;
		else  			       rgb_o2 = PURPLE;
	
	
/*assign rgb_o1 = 	(colum_i < X0) ? BLACK :			// ":" tine loc de "else" 
					(colum_i < X1) ? BLUE :	
					(colum_i < X2) ? GREEN :
					(colum_i < X3) ? CYAN :	
					(colum_i < X4) ? RED :
					(colum_i < X5) ? PURPLE :
					(colum_i < X6) ? YELLOW :
										WHITE;
	*/
endmodule