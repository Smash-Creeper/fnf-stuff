song_pos = b_chart_loader.song_pos

if((song_pos >= 56.21 && triggered[0] = false)){
	var proc = 0
	repeat(4){
		with(battle.arrow[proc,0]){
			y += 7
			image_alpha -= (1/(572/7))
		}
		proc += 1
	}
	if(battle.arrow[proc-1,0].image_alpha < 0){
	triggered[0] = true
	}
}

if(keyboard_check_pressed(ord("G"))){
	with(b_chart_loader){
		audio_sound_set_track_position(song_inst,52.00)
		audio_sound_set_track_position(song_vocals,52.00)
	}
}