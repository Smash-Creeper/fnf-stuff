/// @desc Note Loading

var _data = array_get(THE_CHART,0)
global.arrow_speed = _data.arrow_speed
var cs = 0
var proc = 1
repeat(array_length(THE_CHART)-1){
	var _data = array_get(THE_CHART,proc)

	var nproc = 0
	repeat(array_length(_data)){
		var NC = array_get(_data,nproc)
		
	//	show_debug_message(string(NC))
		if(loaded_note[cs][nproc] = false && variable_instance_exists(NC,"notepos") && NC.notepos <= song_pos + 5 && NC.notepos  >= song_pos){
			var tt = (variable_instance_exists(NC,"notetype") ? NC.notetype : 0)
			var N = instance_create_depth(NC.notex,getYfromStrum(NC.notepos),BATTLE_DEPTH.B_ARROW_P1,arrowToObj(tt))
			N.arrow_type = 12 + NC.notedir
			N.pos = NC.notepos
			N.length = NC.notelength
		
			if(NC.notex < 640){
				N.linked_ui_arrow = battle.arrow[NC.notedir,1]
				N.depth = BATTLE_DEPTH.B_ARROW_P2
			}else if(NC.notex >= 640){
				N.linked_ui_arrow = battle.arrow[NC.notedir,0]
				N.depth = BATTLE_DEPTH.B_ARROW_P1
			}
			loaded_note[cs][nproc] = true
		}
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
		if(loaded_event[cs][nproc] = false && variable_instance_exists(NC,"eventtype") && NC.eventpos <= song_pos + 5){
		var vv = (variable_instance_exists(NC,"eventval") ? NC.eventval : 0)
		var N = instance_create_depth(0,getYfromStrum(NC.eventpos),BATTLE_DEPTH.B_ARROW_P1,b_event)
		N._event_type = NC.eventtype
		N.pos = NC.eventpos
		N.value = vv
		with(N){
	//	show_debug_message("EVENT IS LOADED AT " + string(NC.eventpos))	
		}
		loaded_event[cs][nproc] = true
		}
		nproc += 1
	}
	cs += 1
	proc += 1
}
cs = 0

//show_debug_message(string(arrow_speed))
//show_debug_message(string(global.arrow_speed))