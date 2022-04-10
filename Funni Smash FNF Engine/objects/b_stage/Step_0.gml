if(array_get(camclampx,0) != undefined && array_get(camclampx,1) != undefined){
	camera.x = clamp(camera.x,array_get(camclampx,0),array_get(camclampx,1))
}
if(array_get(camclampy,0) != undefined && array_get(camclampy,1) != undefined){
	camera.y = clamp(camera.y,array_get(camclampy,0),array_get(camclampy,1))
}

switch(stage){
	case STAGE.DEATH:
	var SW = sprite_get_width(global.stage_sprite[STAGE.DEATH][0])/4
	var SH = sprite_get_height(global.stage_sprite[STAGE.DEATH][0])/4
	camclampx = [-SW/camera.zoom,SW/camera.zoom]
	camclampy = [-SH/camera.zoom,SH/camera.zoom]
	break;
}