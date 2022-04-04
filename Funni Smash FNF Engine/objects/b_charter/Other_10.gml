/// @description Load chart
// Honestly just redo the saving and loading system
if(chart_is_loaded = false){
var _buffer = buffer_load(global.chart_file);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)
var _buffer = buffer_load(global.event_file);
var _string_event = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)

var _loaded_data = json_parse(_string)
var _loaded_data_event = json_parse(_string_event)

var chart = array_pop(_loaded_data)
var event = array_pop(_loaded_data_event)

var _data = array_get(chart,0)
//show_debug_message(string(_data))
song_title = string(_data.song_title)
audio_inst = audio_play_sound(asset_get_index(_data.audio_inst),0,false)
audio_vocal = audio_play_sound(asset_get_index(_data.audio_vocal),0,false)
t_section = _data.total_sections
arrow_speed = _data.arrow_speed
if(variable_instance_exists(_data,"bpm")){
	bpm = _data.bpm
	global.bpm = _data.bpm
}
if(variable_instance_exists(_data,"player0")){
	global.player[0] = _data.player0
}
if(variable_instance_exists(_data,"player1")){
	global.player[1] = _data.player1
}
if(variable_instance_exists(_data,"icon")){
	icon = _data.icon
}
if(variable_instance_exists(_data,"stage")){
	stage = _data.stage
}
if(variable_instance_exists(_data,"uiarrows")){
	ui_arrow_count = _data.uiarrows
}
if(variable_instance_exists(_data,"modchart")){
	modchart = _data.modchart
}

audio_pause_sound(audio_inst)
audio_pause_sound(audio_vocal)

var proc = 1
c_section = 0

var STAN = (array_length(chart)-1 >= array_length(event) ? (array_length(chart)-1) : array_length(event))
	var _data = array_get(chart,0)

	var cs = 0
	var proc = 1
	repeat(array_length(chart)-1){
		var _data = array_get(chart,proc)

		var nproc = 0
		repeat(array_length(_data)){
			var NC = array_get(_data,nproc)
			var NT = (variable_instance_exists(NC,"notetype") ? NC.notetype : 0)
			var NL = (variable_instance_exists(NC,"notelength") ? NC.notelength : 0)
		//	show_debug_message(string(NC))
			if(variable_instance_exists(NC,"notedir")){
				charter_add_note(NC.notex,NC.notepos,NC.notedir,NL,NT,cs)
			}
			nproc += 1
		}
		c_section += 1
		cs += 1
		proc += 1
	}
	cs = 0
	c_section = 0
	var proc = 0
	repeat(array_length(event)){
		var _data = array_get(event,proc)

		var nproc = 0
		repeat(array_length(_data)){
			var NC = array_get(_data,nproc)
			if(variable_instance_exists(NC,"eventtype")){
				charter_add_event(NC.eventpos, NC.eventtype,NC.eventval,cs)
			}
			nproc += 1
		}
		c_section += 1
		cs += 1
		proc += 1
	}
	c_section = 0
	cs = 0
	chart_is_loaded = true
}

//show_debug_message(string(arrow_speed))
//show_debug_message(string(global.arrow_speed))