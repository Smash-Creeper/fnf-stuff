song_pos = audio_sound_get_track_position(song_inst)
//show_debug_message(string(arrow_speed))
//show_debug_message(string(global.arrow_speed))
if(loaded = false){
	event_user(1)
}else{
	event_user(0)
}

if(!instance_exists(b_countdown) && loaded = true && !audio_is_playing(song_vocals) && !audio_is_playing(song_inst)){
	var _data = array_get(THE_CHART,0)
	song_inst = audio_play_sound(asset_get_index(_data.audio_inst),0,false)
	song_vocals = audio_play_sound(asset_get_index(_data.audio_vocal),0,false)
	audio_sound_set_track_position(song_inst,global.playtesttime)
	audio_sound_set_track_position(song_vocals,global.playtesttime)
}