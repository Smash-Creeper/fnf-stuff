/// @desc Note Loading

var _data = array_get(THE_CHART,0)
//global.arrow_speed = _data.arrow_speed
var cs = 0
var proc = 1
repeat(array_length(THE_CHART)-1){
	var _data = array_get(THE_CHART,proc)

	var nproc = 0
	repeat(array_length(_data)){
		var NC = array_get(_data,nproc)
		
	//	show_debug_message(string(NC))
//		if(loaded_note[cs][nproc] = false && variable_instance_exists(NC,"notepos") && NC.notepos <= song_pos + 5 && NC.notepos  >= song_pos){
			var tt = (variable_instance_exists(NC,"notetype") ? NC.notetype : 0)
			Note[cs][nproc] = instance_create_depth(NC.notex,getYfromStrum(NC.notepos),BATTLE_DEPTH.B_ARROW_P1,arrowToObj(tt))
			Note[cs][nproc].arrow_type = 15 + NC.notedir
			Note[cs][nproc].pos = NC.notepos
			Note[cs][nproc].length = NC.notelength
			if(global.onechartmode = false){
				if(NC.notex < 640){
					Note[cs][nproc].linked_ui_arrow = battle.arrow[NC.notedir,1]
					Note[cs][nproc].depth = BATTLE_DEPTH.B_ARROW_P2
				}else if(NC.notex >= 640){
					Note[cs][nproc].linked_ui_arrow = battle.arrow[NC.notedir,0]
					Note[cs][nproc].depth = BATTLE_DEPTH.B_ARROW_P1
				}
			}else
			if(global.onechartmode = true){
				Note[cs][nproc].linked_ui_arrow = battle.arrow[NC.notedir,0]
				Note[cs][nproc].depth = BATTLE_DEPTH.B_ARROW_P1
			}
			instance_deactivate_object(Note[cs][nproc]);
			loaded_note[cs][nproc] = true
//		}
		nproc += 1
	}
	cs += 1
	proc += 1
}
cs = 0

var proc = 0
repeat(array_length(THE_EVENT_CHART)){
	var _data = array_get(THE_EVENT_CHART,proc)

	var nproc = 0
	repeat(array_length(_data)){
		var NC = array_get(_data,nproc)
//		if(loaded_event[cs][nproc] = false && variable_instance_exists(NC,"eventtype") && NC.eventpos <= song_pos + 5){
		var vv = (variable_instance_exists(NC,"eventval") ? NC.eventval : 0)
		Event[cs][nproc] = instance_create_depth(0,getYfromStrum(NC.eventpos),BATTLE_DEPTH.B_ARROW_P1,b_event)
		Event[cs][nproc]._event_type = NC.eventtype
		Event[cs][nproc].pos = NC.eventpos
		Event[cs][nproc].value = vv
		with(Event[cs][nproc]){
	//	show_debug_message("EVENT IS LOADED AT " + string(NC.eventpos))	
		}
		loaded_event[cs][nproc] = true
		instance_deactivate_object(Event[cs][nproc]);
//		}
		nproc += 1
	}
	cs += 1
	proc += 1
}
cs = 0
///Reprogram to use loads only ones and uses activating and deactivating systems so it lags less
//show_debug_message(string(arrow_speed))
//show_debug_message(string(global.arrow_speed))