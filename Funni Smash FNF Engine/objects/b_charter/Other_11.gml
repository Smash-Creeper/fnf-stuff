/// @description Save chart
// You can write your code in this editor
//c_section = t_section - 1

var chart_data = array_create(0)
var chart_event_data = array_create(0)
var chart = array_create(0)
var chart_event = array_create(0)
var cproc = 0
var TC = t_section

var _data = {
	song_title : song_title,
	audio_inst : string(audio_get_name(audio_inst)),
	audio_vocal : string(audio_get_name(audio_vocal)),
	total_sections : t_section,
	arrow_speed : arrow_speed,
	bpm : bpm,
	player0 : global.player[0],
	player1 : global.player[1],
}

array_push(chart,_data)

//for(cproc = 0; variable_instance_exists(self,"section_notes" + string(cproc)) ;cproc += 1){
repeat(t_section){
var proc = 0
var NC = variable_instance_get(self,"section_notes" + string(cproc))
var section = array_create(0)
repeat(array_length(NC)){
	var _notex = array_get(array_get(NC,proc),0)
	var _notepos = array_get(array_get(NC,proc),1)
	var _notedir = array_get(array_get(NC,proc),2)
	var _notelength = array_get(array_get(NC,proc),3)
	var _notetype = array_get(array_get(NC,proc),4)
	var _note = {
		notex : _notex,
		notepos : _notepos,
		notedir : _notedir,
		notelength : _notelength,
		notetype : _notetype,
	}
	array_push(section,_note)
	proc += 1
}
array_push(chart,section)
cproc += 1
}

//array_push(chart,"This is a space :)")

var cproc = 0

var i;
//for(cproc = 0; variable_instance_exists(self,"section_events" + string(cproc)) ;cproc += 1){
repeat(t_section){
var proc = 0
var EC = variable_instance_get(self,"section_events" + string(cproc))
var section_event = array_create(0)
repeat(array_length(EC)){
	var _eventpos = array_get(array_get(EC,proc),0)
	var _eventtype = array_get(array_get(EC,proc),1)
	var _eventval = array_get(array_get(EC,proc),2)
	var _event = {
		eventpos : _eventpos,
		eventtype : _eventtype,
		eventval : _eventval, 
	}
	array_push(section_event,_event)
	proc += 1
}
array_push(chart_event,section_event)
cproc += 1
}
/*
var i;
for(i = 0; variable_instance_exists(self,"section_notes" + string(i)) ;i += 1){
	var proc = 0
	var NC = variable_instance_get(self,"section_notes" + string(i))
	var section = array_create(0)
	repeat(array_length(NC)){
		var _notex = array_get(array_get(NC,proc),0)
		var _notepos = array_get(array_get(NC,proc),1)
		var _notedir = array_get(array_get(NC,proc),2)
		var _notelength = array_get(array_get(NC,proc),3)
		var _notetype = array_get(array_get(NC,proc),4)
		var _note = {
			notex : _notex,
			notepos : _notepos,
			notedir : _notedir,
			notelength : _notelength,
			notetype : _notetype,
		}
		array_push(section,_note)
		proc += 1
	}
	array_push(chart,section)
	var proc = 0
	var section_event = array_create(0)
	if(variable_instance_exists(self,"section_events" + string(i)) = true){
	var EC = variable_instance_get(self,"section_events" + string(i))
	repeat(array_length(EC)){
		var _eventpos = array_get(array_get(EC,proc),0)
		var _eventtype = array_get(array_get(EC,proc),1)
		var _eventval = array_get(array_get(EC,proc),2)
		var _event = {
			eventpos : _eventpos,
			eventtype : _eventtype,
			eventval : _eventval, 
		}
		array_push(section_event,_event)
		proc += 1
	}
	}
	array_push(chart_event,section_event)
}*/


array_push(chart_data,chart)
var _string = json_stringify(chart_data)
var _buffer = buffer_create(string_byte_length(_string) + 1,buffer_fixed,1)
buffer_write(_buffer,buffer_string,_string)
buffer_save(_buffer, global.chart_save_path + string(song_title) + ".chart")
buffer_delete(_buffer)
array_push(chart_event_data,chart_event)
var _string = json_stringify(chart_event_data)
var _buffer = buffer_create(string_byte_length(_string) + 1,buffer_fixed,1)
buffer_write(_buffer,buffer_string,_string)
buffer_save(_buffer, global.event_save_path + string(song_title) + ".event")
buffer_delete(_buffer)
global.song_title = song_title
global.chart_file = global.chart_save_path + song_title + ".chart"
global.event_file = global.event_save_path + song_title + ".event"
show_debug_message("Chart Events Saved!")