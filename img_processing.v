module img_processing(
	input      [2:0]    rgb_o1 ,
	input  	   [9:0]	row_i,
	output reg [2:0]    rgb_o2
);

localparam Y0 = 80 ;	
localparam Y1 = 160;											// doua treimi din 640 de pixeli
localparam Y2 = 240;
localparam Y3 = 320;
localparam Y4 = 400;
localparam Y5 = 480;
localparam Y6 = 560;
localparam Y7 = 640;

localparam BLACK = 3'b000 ;
localparam BLUE = 3'b001  ;
localparam GREEN = 3'b010 ;
localparam RED 	 = 3'b100 ;
localparam CYAN = 3'b011  ;
localparam PURPLE = 3'b101;
localparam YELLOW = 3'b110;
localparam WHITE = 3'b111 ;


always @(*)	begin
	if      (rgb_o1 == BLACK  && row_i < Y0) rgb_o2=BLUE  ;
	else if (rgb_o1 == BLUE   && row_i < Y1) rgb_o2=GREEN ;
	else if (rgb_o1 == GREEN  && row_i < Y2) rgb_o2=RED   ;
	else if (rgb_o1 == CYAN   && row_i < Y3) rgb_o2=CYAN  ;
	else if (rgb_o1 == RED    && row_i < Y4) rgb_o2=BLACK ;
	else if (rgb_o1 == PURPLE && row_i < Y5) rgb_o2=YELLOW;
	else if (rgb_o1 == YELLOW && row_i < Y6) rgb_o2=WHITE ;
	else if (rgb_o1 == WHITE  && row_i < Y7)  rgb_o2=PURPLE;

end



endmodule