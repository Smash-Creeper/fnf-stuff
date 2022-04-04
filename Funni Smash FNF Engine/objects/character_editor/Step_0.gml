current_frame = current_frame % array_length(global.char_img_x[char][current_animation])
current_animation_num = clamp(current_animation_num,0,4)
current_animation = numToanim(current_animation_num)
if(anim_is_playing){
	current_frame += 1
}

if(current_frame < 0){
	current_frame = 0
}

var FProc = 0;
if(loaded = false){
	repeat(array_length(global.char_img_x[char][current_animation])){
		if(!variable_instance_exists(self,"frame_" + string(FProc))){
			variable_instance_set(self,"frame_" + string(FProc),array_create(2,0));
			show_debug_message("frame_" + string(FProc) + ": " + string(variable_instance_get(self,"frame_" + string(FProc))))
		}
		FProc += 1
	}
}else if(loaded = true){
	if(loaded_frames = false){
		repeat(array_length(array_length(global.char_img_x[char][current_animation]))){
			variable_instance_set(self,"frame_" + string(FProc),array_get(frames[current_animation_num],FProc))
			show_debug_message("frame_" + string(FProc) + ": " + string(variable_instance_get(self,"frame_" + string(FProc))))
			FProc += 1
		}
		loaded_frames = true
	}
}
if(InputGet(global.input_confirm) == INPUT_STATE.PRESSED){
	anim_is_playing = !anim_is_playing
}
if(InputGet(global.input_right) == INPUT_STATE.PRESSED){
	current_frame += 1
	var cf = current_frame % array_length(global.char_img_x[char][current_animation])
	show_debug_message(string(frames))
	show_debug_message(string(frames[current_animation_num]))
	show_debug_message(string(frames[current_animation_num][cf]))
	// origin_x = array_get(frames[current_animation_num][cf-1],0)
	// origin_y = array_get(frames[current_animation_num][cf-1],1)
}else
if(InputGet(global.input_left) == INPUT_STATE.PRESSED){
	current_frame -= 1
	if(current_frame >= 0){
		var cf = current_frame % array_length(global.char_img_x[char][current_animation])
		show_debug_message(string(frames))
		show_debug_message(string(frames[current_animation_num]))
	//	show_debug_message(string(frames[current_animation_num][cf]))
	//origin_x = array_get(frames[current_animation_num][cf],0)
	//origin_y = array_get(frames[current_animation_num][cf],1)
	}
}
if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	var FSProc = 0
	frames[current_animation_num] = array_create(0);
	for (var i = 0; variable_instance_exists(self,"frame_" + string(i)); i += 1){
		array_push(frames[current_animation_num],variable_instance_get(self,"frame_" + string(i)))
		show_debug_message("frame_" + string(i) + ": " + string(variable_instance_get(self,"frame_" + string(i))))
	}
	current_animation_num += 1
	current_animation = numToanim(current_animation_num)
	loaded_frames = false;
}else
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	var FSProc = 0
	frames[current_animation_num] = array_create(0);
	for (var i = 0; variable_instance_exists(self,"frame_" + string(i)); i += 1){
		array_push(frames[current_animation_num],variable_instance_get(self,"frame_" + string(i)))
		show_debug_message("frame_" + string(i) + ": " + string(variable_instance_get(self,"frame_" + string(i))))
	}
	current_animation_num -= 1
	current_animation = numToanim(current_animation_num)
	loaded_frames = false;
}else{
	
}




current_frame = clamp(current_frame,0,array_length(global.char_img_x[char][current_animation]))
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
	}else{
		var CCF = clamp(current_frame,0,array_length(global.char_img_x[char][current_animation]))
		if(array_length(frames[current_animation_num]) > 0){
			origin_x = array_get(variable_instance_get(self,"frame_" + string(current_frame)),0)
			origin_y = array_get(variable_instance_get(self,"frame_" + string(current_frame)),1)
		}
	}
}else{
	//var CCF = clamp(current_frame,0,array_length(frames[current_animation_num])-1)
	//if(array_length(frames[current_animation_num]) > 0){
	//	origin_x = array_get(variable_instance_get(self,"frame_" + string(current_frame)),0)
	//	origin_y = array_get(variable_instance_get(self,"frame_" + string(current_frame)),1)
	//}
}

var OP = array_create(0);
array_push(OP,origin_x)
array_push(OP,origin_y)
variable_instance_set(self,"frame_" + string(current_frame),OP);

current_animation_num = clamp(current_animation_num,0,4)
current_animation = numToanim(current_animation_num)

png_spr = char_to_spr(char);