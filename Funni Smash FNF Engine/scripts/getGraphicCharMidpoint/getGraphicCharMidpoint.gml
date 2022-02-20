///@arg sprite
///@arg frame
///@arg x/y[0-1]
function getGraphicCharMidpoint(){
	var SPR = argument[0]
	var FRAM = argument[1]
	var XY = argument[2]
	if(XY = 0){
		var v = global.char_img_width[SPR][FRAM]
		return v/2;
		
	}else if(XY = 1){
		var v = global.char_img_height[SPR][FRAM]
		return v/2;
	}
}