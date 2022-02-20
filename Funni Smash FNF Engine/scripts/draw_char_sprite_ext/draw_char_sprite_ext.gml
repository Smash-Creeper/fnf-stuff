///@arg filepath
///@arg character
///@arg imgtitle
///@arg subimg
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg col
///@arg alpha
///@arg *origin
function draw_char_sprite_ext(){
	var SPR = argument[0]
	var CHAR = argument[1]
	var TIT = argument[2]
	var SUB = argument[3]
	var X = argument[4]
	var Y = argument[5]
	var XSCALE = argument[6]
	var YSCALE = argument[7]
	var COLOR = argument[8]
	var ALPHA = argument[9]
	var ORIGIN = SPRITE_ORIGIN.CENTER_MIDDLE
	var FPRIORITY = false
	if(argument_count > 10){
		var ORIGIN = argument[10]
	}
	if(argument_count > 11){
		var FPRIORITY = argument[11]
	}
	
	var ix = real(global.char_img_x[CHAR][TIT][SUB])
	var iy = real(global.char_img_y[CHAR][TIT][SUB])
	var iw = real(global.char_img_width[CHAR][TIT][SUB])
	var ih = real(global.char_img_height[CHAR][TIT][SUB])
	var ifx = real(global.char_img_frameX[CHAR][TIT][SUB])
	var ify = real(global.char_img_frameY[CHAR][TIT][SUB])
	var ifw = real(global.char_img_frameWidth[CHAR][TIT][(SUB < array_length(global.char_img_frameWidth[CHAR][TIT]) ? SUB : (array_length(global.char_img_frameWidth[CHAR][TIT]) != 0 ? array_length(global.char_img_frameWidth[CHAR][TIT]) : 0))])
	var ifh = real(global.char_img_frameHeight[CHAR][TIT][(SUB < array_length(global.char_img_frameHeight[CHAR][TIT]) ? SUB : (array_length(global.char_img_frameHeight[CHAR][TIT]) != 0 ? array_length(global.char_img_frameHeight[CHAR][TIT]) : 0))])
	var ixfw = /*(is_real(ifw) ? ifw : iw)*/(iw >= ifw ? iw : (is_real(ifw) && FPRIORITY = true ? ifw : iw))
	var iyfw = /*(is_real(ifh) ? ifh : ih)*/(ih >= ifh ? ih : (is_real(ifh) && FPRIORITY = true ? ifh : ih))
	var TX = X - (((ixfw/100)*(XSCALE*100))/2) + (((ifx/100)*(XSCALE*100))/2) //+ ifx
	var TY = Y - (((iyfw/100)*(YSCALE*100))/2) + (((ify/100)*(YSCALE*100))/2) //+ ify
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
		case SPRITE_ORIGIN.BOTTOM_MIDDLE:
		var TX = X - (((ixfw/100)*(XSCALE*100))/2) + (((ifx/100)*(XSCALE*100))/2) //+ ifx
		var TY = Y - (((iyfw/100)*(YSCALE*100))) + (((ify/100)*(YSCALE*100)))
		break;
	}
	
	
	draw_sprite_part_ext(SPR,0,ix,iy,ixfw,iyfw,TX,TY,XSCALE,YSCALE,COLOR,ALPHA)
}