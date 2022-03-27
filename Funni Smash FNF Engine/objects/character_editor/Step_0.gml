if(InputGet(global.input_confirm) == INPUT_STATE.PRESSED){
	anim_is_playing = !anim_is_playing
}
if(InputGet(global.input_right) == INPUT_STATE.HELD){
	current_frame += 1
}else
if(InputGet(global.input_left) == INPUT_STATE.HELD){
	current_frame -= 1
}
if(anim_is_playing){
	current_frame += 1
}

if(current_frame < 0){
	current_frame = 0
}

var FProc = 0;
repeat(array_length(global.char_img_x[char][current_animation])){
	if(!variable_instance_exists(self,"frame_" + string(FProc))){
		variable_instance_set(self,"frame_" + string(FProc),array_create(0))
	}
	FProc += 1
}

if(mouse_x >= room_width/2-origin_x &&
mouse_y >= room_height/2-origin_y &&
mouse_x <= room_width/2 + global.char_img_width[char][current_animation][current_frame % array_length(global.char_img_x[char][current_animation])]-origin_x &&
mouse_y <= room_height/2 + global.char_img_height[char][current_animation][current_frame % array_length(global.char_img_x[char][current_animation])]-origin_y){
	mouse_in_frame = true
}else{
	mouse_in_frame = false
}

if(mouse_in_frame){
	if(mouse_check_button_pressed(mb_left)/* && (mouse_og_x = undefined || mouse_og_y = undefined)*/){
		mouse_og_x = mouse_x
		mouse_og_y = mouse_y 
	}
	if(mouse_check_button(mb_left)){
		origin_x = mouse_og_x - mouse_x//clamp(mouse_og_x - mouse_x,-100,100)
		origin_y = mouse_og_y - mouse_y//clamp(mouse_og_y - mouse_y,-100,100)
	}
}