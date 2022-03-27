var proc = 0
repeat(array_length(buttons)){
	if(selected != proc){
		draw_flash_sprite_ext(global.spr_menu,array_get(buttons,proc),floor(frame) % 3,640,90 + 180*proc,1,1,image_angle,c_white,1,SPRITE_ORIGIN.CENTER_MIDDLE)
	}else{
		draw_flash_sprite_ext(global.spr_menu,array_get(buttons_selected,proc),floor(frame) % 3,640,90 + 180*proc,1,1,image_angle,c_white,1,SPRITE_ORIGIN.CENTER_MIDDLE)
	}
	proc += 1
}
frame+= 1/12