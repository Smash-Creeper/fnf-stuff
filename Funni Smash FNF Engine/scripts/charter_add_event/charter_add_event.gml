///@arg songPos
///@arg type
///@arg *value
///@arg *section
function charter_add_event(){
	var POS = argument[0]
	var TYPE = argument[1]
	var VAL = 0
	var SECTION = c_section
	if(argument_count > 2){
		var VAL = argument[2]
	}
	if(argument_count > 3){
	var SECTION = argument[3]
	}
	switch(TYPE){
	case EVENT.CAMERA_SHIFT_P1:
	var COL = c_aqua
	break;
	case EVENT.CAMERA_SHIFT_P2:
	var COL = c_purple
	break;
	case EVENT.CAMERA_SHIFT_ZOOM:
	var COL = c_yellow
	break;
	case EVENT.CAMERA_SHIFT_ANGLE:
	var COL = c_red
	break;
	case EVENT.CAMERA_SHIFT_X:
	var COL = c_maroon
	break;
	case EVENT.CAMERA_SHIFT_Y:
	var COL = c_green
	break;
	case EVENT.CUSTOM:
	var COL = c_navy
	break;
	default:
	var COL = c_white
	break;
	}
	if(variable_instance_exists(self,"section_events" + string(c_section)) = false){
		variable_instance_set(self,"section_events" + string(c_section), array_create(0))
	}
	var event = [POS,TYPE,VAL,COL]
	array_push(variable_instance_get(self,"section_events" + string(c_section)),event)
	//show_debug_message(string(variable_instance_get(self,"section_events" + string(c_section))))
}