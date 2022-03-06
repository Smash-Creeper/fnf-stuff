spr_current = 0
c_sfx = audio_play_sound(sfx_countdown_3,5,false)
sfx_full = audio_play_sound(sfx_countdown_full,1,false)
audio_sound_gain(sfx_full,0.000000000000000000001,0)
c_sfx_total_length = audio_sound_length(sfx_countdown_3) + audio_sound_length(sfx_countdown_2) + audio_sound_length(sfx_countdown_1) + audio_sound_length(sfx_countdown_0)
//alarm[0] = ceil(audio_sound_length(c_sfx)*60)