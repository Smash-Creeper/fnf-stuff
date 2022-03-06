/// @desc Reload Song

var _buffer = buffer_load(global.chart_file);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer)

var _loaded_data = json_parse(_string)

var chart = array_pop(_loaded_data)

var _data = array_get(chart,0)

audio_inst = audio_play_sound(asset_get_index(_data.audio_inst),0,false)
audio_vocal = audio_play_sound(asset_get_index(_data.audio_vocal),0,false)

audio_pause_sound(audio_inst)
audio_pause_sound(audio_vocal)