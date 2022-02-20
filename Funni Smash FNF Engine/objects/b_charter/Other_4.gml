//instance_create_depth(100,100,depth-100,b_charter_menu)
if(debug_mode){
	song_pos = global.playtesttime
	audio_sound_set_track_position(audio_inst,global.playtesttime)
	audio_sound_set_track_position(audio_vocal,global.playtesttime)
	song_pos = global.playtesttime
}else{
	global.playtesttime = 0.00
}