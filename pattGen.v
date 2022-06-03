module pattGen(
											//Lista de porturi
	output reg [2:0]	rgb_o1		,
	input  	[8:0]	    row_i		,
	input  	[9:0]	    colum_i	    
);

// Lista de parametri
// Imaginea este 640X480 pixeli											
localparam Y0 = 60;	
localparam Y1 = 120;											
localparam Y2 = 180;
localparam Y3 = 240;
localparam Y4 = 300;
localparam Y5 = 360;
localparam Y6 = 420;
localparam Y7 = 480;
//rgb

localparam BLACK = 3'b000;
localparam BLUE = 3'b001;
localparam GREEN = 3'b010;
localparam RED 	 = 3'b100;
localparam CYAN = 3'b011;
localparam PURPLE = 3'b101;
localparam YELLOW = 3'b110;
localparam WHITE = 3'b111;

											



//	Cod
											
always @(*)										
if(row_i < Y0)
							   rgb_o1 = BLACK	;
		else if (row_i < Y1) rgb_o1 = BLUE;
		else if (row_i < Y2) rgb_o1 = GREEN;
		else if (row_i < Y3) rgb_o1 = CYAN;
		else if (row_i < Y4) rgb_o1 = RED;
		else if (row_i < Y5) rgb_o1 = PURPLE;
		else if (row_i < Y6) rgb_o1 = YELLOW;
		else  				   rgb_o1 = WHITE;
	
	

endmodule