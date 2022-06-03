
module vgaDriver_top (
input	 clk_i  ,   // clock input, 50MHz
input	 reset_i,	// reset active high
input 	 buton1,
output   hSync_o,	// Horizontal sync video output
output   vSync_o,	// vertical sync video output
output   red_o  ,	// red video output
output   green_o,	// green video output
output   blue_o     // blue video output
);
wire [4:0] internal_red_o  ; 
wire [5:0] internal_green_o;
wire [4:0] internal_blue_o ;

wire [2:0] rgb;
wire [8:0] row;
wire [9:0] colum;

wire [2:0] rgb1;
wire [2:0] rgb2;

assign red_o   = internal_red_o  [4];
assign green_o = internal_green_o[5];
assign blue_o  = internal_blue_o [4];
// code

vgaDriver i_vgaDriver(
  .clk_i     (clk_i                 							    ),	// clock input, 50MHz
  .reset_i   (reset_i               							    ),	// reset active high
 //.rgb_i    (16'b10000_100000_10000								)	// pixel colour input (R[4:0], G[5:0], B[4:0])  [15:0]
  .rgb_i     ({rgb[2], 4'b0000,rgb[1], 5'b0000,rgb[0], 4'b0000   	}),
  .row_o     (row                   								),	// Not used in etapa1
  .column_o  (colum                 								),	// Not used in etapa1
  .red_o     (internal_red_o        								),	// red video output                             [4:0] 
  .green_o   (internal_green_o      								),	// green video output                           [5:0] 
  .blue_o    (internal_blue_o       								),	// blue video output                            [4:0] 
  .hSync_o   (hSync_o               								),	// Horizontal sync video output
  .vSync_o   (vSync_o               								)	// vertical sync video output

  // !!! Nu atinge acest cod pentru urmatoarele etape !!!
  
  
  
  );
pattGen i_pattGen(
	.rgb_o1		(rgb1),													//output 3 bits
	.row_i		(row), 													//input 9 bits in modul
	.colum_i	(colum)													//input pe 10 bits

);

img_processing i_img_processing(
	.rgb_o1(rgb1),
  .row_i	(row),
	.rgb_o2(rgb2)
);

mux m1 (
	.rgb_o1(rgb1),
	.rgb_o2(rgb2),
	.select(buton1),
	.rgb_o(rgb)
);
endmodule // vgaDriver
