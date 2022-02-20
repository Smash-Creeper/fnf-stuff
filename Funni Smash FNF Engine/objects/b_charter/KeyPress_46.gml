if(keyboard_check(vk_shift) && keyboard_check(vk_control) && debug_mode){
	///THIS KEYBIND DELETES ENTIRE CHART, PLEASE REMOVE AS SOON AS YOU ADD A PROPER WAY TO MAKE NEW CHARTS
	charter_clear_chart()
}else{
	var C = get_integer("Copy Last Section", 0)
	if(C != undefined){
		charter_last_copy_section(C)
	}
}