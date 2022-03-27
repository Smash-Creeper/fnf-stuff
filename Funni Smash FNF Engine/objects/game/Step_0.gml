if(keyboard_check_pressed(vk_f2)){
	game_restart();
}

MoveStep();

if(keyboard_check_pressed(187)){
	volume += 0.10
	
}else
if(keyboard_check_pressed(189)){
	volume -= 0.10
	
}else
if(keyboard_check_pressed(ord(0))){
	volume = 0
	
}
if(volume > 1){
	volume = 1
}
if(volume <= 0){
	volume = 0.000000000001
}
if(keyboard_check_pressed(91)){
	//MoveObject(camera,"angle",0,360,60*360)
	
}
audio_master_gain(volume)

///Menu Music
if((room != room_menu && room != room_init && room != room_titlescreen && room != room_freeplay_menu && room != room_storymode_menu) && audio_is_playing(menu_mus)){
	audio_stop_sound(self.menu_mus)
}else if((room == room_menu || room == room_init || room == room_titlescreen || room == room_freeplay_menu || room == room_storymode_menu) && !audio_is_playing(menu_mus)){ 
	menu_mus = audio_play_sound(sfx_freakyMenu,0,true)
}

//show_debug_message("Game Step is Running!")