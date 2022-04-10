dx = x
dy = y
if(!locked){
	var p = (pos - b_chart_loader.song_pos)
	y = lengthdir_y(getYfromStrum(p) * global.arrow_speed,linked_ui_arrow.image_angle-90) + linked_ui_arrow.y
	x = lengthdir_x(getYfromStrum(p) * global.arrow_speed,linked_ui_arrow.image_angle-90) + linked_ui_arrow.x
	image_angle = linked_ui_arrow.image_angle
//	y = (getYfromStrum(p) * global.arrow_speed) + linked_ui_arrow.y
}else if(locked){
	length = oglength + pos - b_chart_loader.song_pos
	if(length <= 0){
		event_user(0)
	}	
	if(!linked_ui_arrow.detect_arrow_hold){
		locked = false
	}
	//y = linked_ui_arrow.y
	//x = linked_ui_arrow.x
}
x = linked_ui_arrow.x
if(point_distance(linked_ui_arrow.x, linked_ui_arrow.y, x, y) > getYfromStrum(global.mercy_length * (2)) && linked_ui_arrow.cpu = false && contacted = true && (pos - b_chart_loader.song_pos) <= 0){
	event_user(1)
}
if(instance_exists(linked_ui_arrow._target_note) && linked_ui_arrow.arrow_state = 10 && linked_ui_arrow._target_note = id){
	event_user(0)
}