///@arg sprite
///@arg frame
///@arg x/y[0-1]
function getGraphicMidpoint(){
	var SPR = argument[0]
	var FRAM = argument[1]
	var XY = argument[2]
	if(XY = 0){
		return global.img_width[SPR,FRAM]/2;
		
	}else if(XY = 1){
		return global.img_height[SPR,FRAM]/2;
	}
}