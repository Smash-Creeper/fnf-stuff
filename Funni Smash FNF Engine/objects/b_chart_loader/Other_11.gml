/// @desc Initial Loading
/*
var _buffer = buffer_load(global.chart_file);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)

var _loaded_data = json_parse(_string)

var chart = array_pop(_loaded_data)*/

var _data = array_get(THE_CHART,0)
//show_debug_message(string(_data))
song_title = string(_data.song_title)
if(!instance_exists(b_countdown)){
song_inst = audio_play_sound(asset_get_index(_data.audio_inst),0,false)
song_vocals = audio_play_sound(asset_get_index(_data.audio_vocal),0,false)
}
t_section = _data.total_sections
arrow_speed = _data.arrow_speed
global.arrow_speed = _data.arrow_speed
if(variable_instance_exists(_data,"bpm")){
	bpm = _data.bpm
	global.bpm = _data.bpm
}

if(object_exists(asset_get_index(string(song_title) + "_modchart"))){
	mod_chart = instance_create_depth(0,0,0,asset_get_index(string(song_title) + "_modchart"))
	show_debug_message("It Exists!")
}

/*audio_pause_sound(audio_inst)
audio_pause_sound(audio_vocal)*/

var proc = 1
repeat(array_length(THE_CHART)-1){
	var _data = array_get(THE_CHART,proc)

	var nproc = 0
	repeat(array_length(_data)){
		var NC = array_get(_data,nproc)
		//Dear future smash creeper, make the loading system based off song time and not sections, thanks! -Past Smash
	//	show_debug_message(string(NC))
		var tt = (variable_instance_exists(NC,"notetype") ? NC.notetype : 0)
	/*	var N = instance_create_depth(NC.notex,getYfromStrum(NC.notepos),BATTLE_DEPTH.B_ARROW_P1,arrowToObj(tt))
		N.arrow_type = 12 + NC.notedir
		N.pos = NC.notepos
		N.length = NC.notelength
		
		if(NC.notex < 640){
			N.linked_ui_arrow = battle.arrow[NC.notedir,1]
			N.depth = BATTLE_DEPTH.B_ARROW_P2
		}else if(NC.notex >= 640){
			N.linked_ui_arrow = battle.arrow[NC.notedir,0]
			N.depth = BATTLE_DEPTH.B_ARROW_P1
		}*/
		loaded_note[c_section][nproc] = false
		nproc += 1
	}
	c_section += 1
	proc += 1
}
c_section = 0

var proc = 0
repeat((array_length(THE_EVENT_CHART))){
	var _data = array_get(THE_EVENT_CHART,proc)

	var nproc = 0
	repeat(array_length(_data)){
		var NC = array_get(_data,nproc)
	//	show_debug_message(string(NC))
		var vv = (variable_instance_exists(NC,"eventval") ? NC.eventval : 0)
	/*	var N = instance_create_depth(0,getYfromStrum(NC.eventpos),BATTLE_DEPTH.B_ARROW_P1,b_event)
		N._event_type = NC.eventtype
		N.pos = NC.eventpos
		N.value = vv*/
		loaded_event[c_section][nproc] = false
		nproc += 1
	}
	c_section += 1
	proc += 1
}
c_section = 0

show_debug_message(string(arrow_speed))
show_debug_message(string(global.arrow_speed))

if(global.playtesttime > 0.00){
	audio_sound_set_track_position(song_inst,global.playtesttime)
	audio_sound_set_track_position(song_vocals,global.playtesttime)
	song_pos = global.playtesttime;
}


loaded = true