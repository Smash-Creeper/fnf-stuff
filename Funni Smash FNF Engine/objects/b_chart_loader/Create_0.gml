song_title = "e"
song_inst = 0
song_vocals = 0
song_pos = 0.00

c_section = 0
t_section = 1

file = global.chart_file//global.chart_save_path + string(song_title) + ".chart"

var _buffer = buffer_load(global.chart_file);

show_debug_message(global.chart_file)

var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)
show_debug_message(_string)
var _loaded_data = json_parse(_string)

var chart = array_pop(_loaded_data)

THE_CHART = chart

var _buffer = buffer_load(global.event_file);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)

var _loaded_data = json_parse(_string)

var chart = array_pop(_loaded_data)

THE_EVENT_CHART = chart

var c = array_get(THE_CHART,0)

if(variable_instance_exists(c,"player0")){
	global.player[0] = asset_get_index(c.player0)
}else{
	global.player[0] = b_player
}
if(variable_instance_exists(c,"player1")){
	global.player[1] = asset_get_index(c.player1)
}else{
	global.player[1] = b_player_dad
}
if(variable_instance_exists(c,"stage")){
	stage = c.stage
}else{
	stage = 0
}

///Load the chart
event_user(1)


//loaded_note = false

alarm[0] = 1