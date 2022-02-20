if(!locked){
	var p = (pos - b_chart_loader.song_pos)
	y = (getYfromStrum(p) * global.arrow_speed) + linked_ui_arrow.y
}else if(locked){
	length = oglength + pos - b_chart_loader.song_pos
	if(length <= 0){
		event_user(0)
	}
	if(!linked_ui_arrow.detect_arrow_hold){
		locked = false
	}
	y = linked_ui_arrow.y
}
x = linked_ui_arrow.x

//if(y < 0 - (getYfromStrum(length)* global.arrow_speed)-200){
if(y <= linked_ui_arrow.y - getYfromStrum(global.mercy_length)*2 && linked_ui_arrow.cpu = false && global.botplay = false){
/*	show_debug_message("Arrow Missed!")
	instance_destroy(self)*/
	event_user(1)
}