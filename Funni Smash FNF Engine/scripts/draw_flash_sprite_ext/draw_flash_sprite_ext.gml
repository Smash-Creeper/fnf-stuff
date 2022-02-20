///@arg filepath
///@arg imgtitle
///@arg subimg
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg col
///@arg alpha
///@arg *origin
function draw_flash_sprite_ext(){
	var SPR = argument[0]
	var TIT = argument[1]
	var SUB = argument[2]
	var X = argument[3]
	var Y = argument[4]
	var XSCALE = argument[5]
	var YSCALE = argument[6]
	var COLOR = argument[7]
	var ALPHA = argument[8]
	var ORIGIN = SPRITE_ORIGIN.CENTER_MIDDLE
	var FPRIORITY = false;
	if(argument_count > 9){
	var ORIGIN = argument[9]
	}
	if(argument_count > 10){
		var FPRIORITY = argument[10]
	}
	
	var ix = real(global.img_x[TIT][SUB])
	var iy = real(global.img_y[TIT][SUB])
	var iw = real(global.img_width[TIT][SUB])
	var ih = real(global.img_height[TIT][SUB])
	var ifx = real(global.img_frameX[TIT][SUB])
	var ify = real(global.img_frameY[TIT][SUB])
	var ifw = real(global.img_frameWidth[TIT][(SUB < array_length(global.img_frameWidth[TIT]) ? SUB : (array_length(global.img_frameWidth[TIT]) != 0 ? array_length(global.img_frameWidth[TIT]) : 0))])
	var ifh = real(global.img_frameHeight[TIT][(SUB < array_length(global.img_frameHeight[TIT]) ? SUB : (array_length(global.img_frameHeight[TIT]) != 0 ? array_length(global.img_frameHeight[TIT]) : 0))])
	var ixfw = /*(is_real(ifw) ? ifw : iw)*/(iw >= ifw ? iw : (is_real(ifw) && FPRIORITY = true ? ifw : iw))
	var iyfw = /*(is_real(ifh) ? ifh : ih)*/(ih >= ifh ? ih : (is_real(ifh) && FPRIORITY = true ? ifh : ih))
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