_event_type = EVENT.CAMERA_SHIFT_P1
pos = 0
ogpos = pos
value = 0
triggered = false
tid = undefined

switch(_event_type){
	case 0:
	case EVENT.CAMERA_SHIFT_P1:
	color = c_aqua
	break;
	case 1:
	case EVENT.CAMERA_SHIFT_P2:
	color = c_purple
	break;
	case EVENT.CUSTOM:
	color = c_black
	tid = value
	break;
}

loaded = false;