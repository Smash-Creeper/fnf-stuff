var p = (pos - b_chart_loader.song_pos)
y = (getYfromStrum(p)) + 103

//if(y < 0 - (getYfromStrum(length)* global.arrow_speed)-200){
if(y <= 103 && triggered = false){
	event_user(0)
	triggered = true
}

switch(_event_type){
	case EVENT.CUSTOM:
	tid = value
	break;
}

switch(_event_type){
	case EVENT.CAMERA_SHIFT_P1:
	color = c_aqua
	break;
	case EVENT.CAMERA_SHIFT_P2:
	color = c_purple
	break;
	case EVENT.CAMERA_SHIFT_ZOOM:
	color = c_yellow
	break;
	case EVENT.CAMERA_SHIFT_ANGLE:
	color = c_red
	break;
	case EVENT.CAMERA_SHIFT_X:
	color = c_maroon
	break;
	case EVENT.CAMERA_SHIFT_Y:
	color = c_green
	break;
	case EVENT.CUSTOM:
	color = c_navy
	break;
}