if(png_spr != undefined && sprite_exists(png_spr)){
	var oxp = array_get(variable_instance_get(self,"frame_" + string(clamp(current_frame-1,0,array_length(global.char_img_x[char][current_animation])))),0)
	var oyp = array_get(variable_instance_get(self,"frame_" + string(clamp(current_frame-1,0,array_length(global.char_img_x[char][current_animation])))),1)
	
	draw_char_sprite_ext(png_spr,char,current_animation,(current_frame+1) % array_length(global.char_img_x[char][current_animation]),room_width/2-oxp,room_height/2-oyp,1,1,c_white,0.5,SPRITE_ORIGIN.BOTTOM_MIDDLE)
	draw_char_sprite_ext(png_spr,char,current_animation,current_frame % array_length(global.char_img_x[char][current_animation]),room_width/2-origin_x,room_height/2-origin_y,1,1,c_white,1,SPRITE_ORIGIN.BOTTOM_MIDDLE)
	draw_rectangle(room_width/2-origin_x,room_height/2-origin_y,room_width/2 + global.char_img_width[char][current_animation][current_frame % array_length(global.char_img_x[char][current_animation])]-origin_x,room_height/2 + global.char_img_height[char][current_animation][current_frame % array_length(global.char_img_x[char][current_animation])]-origin_y,true)
	draw_set_color(c_white)
	draw_circle(room_width/2,room_height/2,5,false)
	draw_set_color(c_red)
	draw_circle(room_width/2,room_height/2,2,false)
}

current_frame = current_frame % array_length(global.char_img_x[char][current_animation])