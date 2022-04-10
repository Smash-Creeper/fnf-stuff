if(debug_mode){
	var df = ui_arrow_count
	ui_arrow_count = get_integer("UI Arrow Amount:",string(ui_arrow_count))
	ui_arrow_count = (ui_arrow_count = undefined ? df : ui_arrow_count)
	grid_p2_x -= (ui_arrow_count - df) * grid_size
	show_debug_message(string(ui_arrow_count))
}