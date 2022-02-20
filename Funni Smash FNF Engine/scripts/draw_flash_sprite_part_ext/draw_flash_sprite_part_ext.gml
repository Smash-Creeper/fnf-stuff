///@arg filepath
///@arg imgtitle
///@arg subimg
///@arg left
///@arg top
///@arg width
///@arg height
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg col
///@arg alpha
///@arg *origin

function draw_flash_sprite_part_ext(){
	var SPR = argument[0]
	var TIT = argument[1]
	var SUB = argument[2]
	var LEFT = argument[3]
	var TOP = argument[4]
	var WIDTH = argument[5]
	var HEIGHT = argument[6]
	var X = argument[7]
	var Y = argument[8]
	var XSCALE = argument[9]
	var YSCALE = argument[10]
	var COLOR = argument[11]
	var ALPHA = argument[12]
	var ORIGIN = SPRITE_ORIGIN.CENTER_MIDDLE
	if(argument_count > 13){
	var ORIGIN = argument[13]
	}
	
	LEFT = clamp(LEFT,0,real(global.img_x[TIT][SUB]))
	TOP = clamp(TOP,0,real(global.img_y[TIT][SUB]))
	WIDTH = clamp(WIDTH,0,real(global.img_width[TIT][SUB]))
	HEIGHT = clamp(HEIGHT,0,real(global.img_height[TIT][SUB]))
	
	var ix = real(global.img_x[TIT][SUB]) + LEFT
	var iy = real(global.img_y[TIT][SUB]) + TOP
	var iw = real(global.img_width[TIT][SUB]) + WIDTH
	var ih = real(global.img_height[TIT][SUB]) + HEIGHT
	var ifx = real(global.img_frameX[TIT][SUB])
	var ify = real(global.img_frameY[TIT][SUB])
	var ifw = real(global.img_frameWidth[TIT][(SUB < array_length(global.img_frameWidth[TIT]) ? SUB : (array_length(global.img_frameWidth[TIT]) != 0 ? array_length(global.img_frameWidth[TIT]) : 0))])
	var ifh = real(global.img_frameHeight[TIT][(SUB < array_length(global.img_frameHeight[TIT]) ? SUB : (array_length(global.img_frameHeight[TIT]) != 0 ? array_length(global.img_frameHeight[TIT]) : 0))])
	var ixfw = (iw >= ifw ? iw : iw)
	var iyfw = (ih >= ifh ? ih : ih)
	switch(ORIGIN){
		case SPRITE_ORIGIN.CENTER_MIDDLE:
		var TX = X - (((ixfw/100)*(XSCALE*100))/2) + (((ifx/100)*(XSCALE*100))/2) //+ ifx
		var TY = Y - (((iyfw/100)*(YSCALE*100))/2) + (((ify/100)*(YSCALE*100))/2) //+ ify
		break;
		case SPRITE_ORIGIN.TOP_LEFT:
		var TX = X// - (((ixfw/100)*(XSCALE*100))/2) + (((ifx/100)*(XSCALE*100))/2) //+ ifx
		var TY = Y// - (((iyfw/100)*(YSCALE*100))/2) + (((ify/100)*(YSCALE*100))/2) //+ ify
		break;
		case SPRITE_ORIGIN.BOTTOM_RIGHT:
		var TX = X - (((ixfw/100)*(XSCALE*100))) + (((ifx/100)*(XSCALE*100))) //+ ifx
		var TY = Y - (((iyfw/100)*(YSCALE*100))) + (((ify/100)*(YSCALE*100))) //+ ify
		break;
		case SPRITE_ORIGIN.TOP_MIDDLE:
		var TX = X - (((ixfw/100)*(XSCALE*100))/2) + (((ifx/100)*(XSCALE*100))/2) //+ ifx
		var TY = Y
		break;
	}
	
	draw_sprite_part_ext(SPR,0,ix,iy,ixfw,iyfw,TX,TY,XSCALE,YSCALE,COLOR,ALPHA)
}