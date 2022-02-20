///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg up
///@arg col1
///@arg col2
///@arg alpha1
///@arg alpha2
function draw_button_ext(){
	var X = argument[0]
	var Y = argument[1]
	var X2 = argument[2]
	var Y2 = argument[3]
	var UP = argument[4]
	var NORMCOL = argument[5]
	var UPCOL = argument[6]
	var NORMALPHA = argument[7]
	var UPALPHA = argument[8]
	
	var isUPcol = (UP ? UPCOL : NORMCOL)
	var isUPalpha = (UP ? UPALPHA : NORMALPHA)
	
	draw_set_color(isUPcol)
	draw_set_alpha(isUPalpha)
//	draw_button(X,Y,X2,Y2,UP)
	draw_sprite_ext_backdrop(spr_pixel,0,X,Y,X2,Y2,0,isUPcol,isUPalpha,2,-45,c_black,1)
	draw_set_color(c_white)
	draw_set_alpha(1)
}