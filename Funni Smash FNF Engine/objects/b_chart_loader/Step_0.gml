song_pos = audio_sound_get_track_position(song_inst)
//show_debug_message(string(arrow_speed))
//show_debug_message(string(global.arrow_speed))
if(loaded = false){
	//event_user(0)
	event_user(1)
}else{
	event_user(3)
	/*var NProc = 0
	repeat(array_length(Note[c_section])){
		if(Note[c_section][NProc].loaded = false){
			instance_activate_object(Note[c_section][NProc])
			Note[c_section][NProc].loaded = true
		}
		NProc += 1
	}
	var EProc = 0
	repeat(array_length(Note[c_section])){
		if(Event[c_section][EProc].loaded = false){
			instance_activate_object(Event[c_section][EProc])
			Event[c_section][EProc].loaded = true
		}
		EProc += 1
	}*/
	
}
if(!instance_exists(b_countdown) && loaded = true && !audio_is_playing(song_vocals) && !audio_is_playing(song_inst) && played = false){
	played = true
	var _data = array_get(THE_CHART,0)
	song_inst = audio_play_sound(asset_get_index(_data.audio_inst),0,false)
	song_vocals = audio_play_sound(asset_get_index(_data.audio_vocal),0,false)
	audio_sound_set_track_position(song_inst,global.playtesttime)
	audio_sound_set_track_position(song_vocals,global.playtesttime)
}else if(!audio_is_playing(song_vocals) && !audio_is_playing(song_inst) && played = true){
	if(global.menustate = MENU_STATE.STORY_MODE){
		global.current_week_song += 1
		if(global.current_week_song >= array_length(global.current_week)){
			room_goto(room_storymode_menu);
			instance_destroy(self);
		}else if(global.current_week_song < array_length(global.current_week)){
			Play_Song(array_get(global.current_week,global.current_week_song))
		}
	}else
	if(global.menustate = MENU_STATE.FREEPLAY){
		room_goto(room_freeplay_menu);
		instance_destroy(self);
	}
}