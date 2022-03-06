b_chart_loader.song_pos = (audio_sound_get_track_position(sfx_full) -c_sfx_total_length)// * global.arrow_speed
global.song_pos = (audio_sound_get_track_position(sfx_full) -c_sfx_total_length) //* global.arrow_speed

if(!audio_is_playing(c_sfx) && spr_current <= 2){
spr_current += 1
c_sfx = audio_play_sound(asset_get_index("sfx_countdown_" + string(3 - spr_current)),5,false)
}else if(spr_current > 2 && b_chart_loader.song_pos >= 0){
	instance_destroy(self);
}
/*
if(!audio_is_playing(sfx_full)){
	instance_destroy(self);
}