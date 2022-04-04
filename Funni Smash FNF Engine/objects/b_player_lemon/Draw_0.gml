var minX = scroll_x_min == 0 ? 0 : scroll_x_min - ((camera.scale_x/camera.scale_y) - 1) * camera.width / (2 * (camera.scale_x/camera.scale_y));
var maxX = scroll_x_max == 0 ? 0 : scroll_x_max + ((camera.scale_x/camera.scale_y) - 1) * camera.width / (2 * (camera.scale_x/camera.scale_y));
var minY = scroll_y_min == 0 ? 0 : scroll_y_min - ((camera.scale_x/camera.scale_y) - 1) * camera.height / (2 * (camera.scale_x/camera.scale_y));
var maxY = scroll_y_max == 0 ? 0 : scroll_y_max + ((camera.scale_x/camera.scale_y) - 1) * camera.height / (2 * (camera.scale_x/camera.scale_y));

scroll_x = clamp(scroll_x,minX,maxX - camera.width)
scroll_y = clamp(scroll_x,minY,maxY - camera.height)
var FP = false

var oxf = 0
var oyf = 0
switch(state){
	case PLAYER_STATE.UP:
	switch(round(img_current)){
		case 0:
		var oxf = -22
		var oyf = 30
		break;
		case 1:
		var oxf = -3
		var oyf = 25
		break;
		case 2:
		var oxf = -5
		var oyf = 21
		break;
		case 3:
		var oxf = -13
		var oyf = 16
		break;
		case 4:
		var oxf = -8
		var oyf = 11
		break;
		case 5:
		var oxf = -2
		var oyf = 8
		break;
		case 6:
		var oxf = 0
		var oyf = 4
		break;
	}
	break;
}

//show_debug_message("scfx = "+string(scfx))
//show_debug_message("scfy = "+string(scfy))
draw_char_sprite_ext(d_sprite,char,state,img_current,scfx-150,scfy-240,(facing = DIR.RIGHT ? (spr_facing = DIR.RIGHT ? 1 : -1) : (spr_facing = DIR.LEFT ? 1 : -1)),1,image_blend,image_alpha,SPRITE_ORIGIN.CUSTOM,false,oxf,oyf)