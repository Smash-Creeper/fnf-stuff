if(debug_mode){
	if(keyboard_check(vk_shift)){
		x -= (keyboard_check(vk_control) ? 1 : 5)
	}else{
		x += (keyboard_check(vk_control) ? 1 : 5)
	}
}