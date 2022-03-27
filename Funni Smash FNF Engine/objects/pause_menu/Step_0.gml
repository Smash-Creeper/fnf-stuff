with(b_player){
	img_timer = 0
}
with(b_player_gf){
	img_timer = 0
}
if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	//selected -= 1
	MoveObject(self,"selected",selected, floor(selected) -1,8)
	audio_play_sound(sfx_scrollMenu,0,false)
}else
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	MoveObject(self,"selected",selected, ceil(selected) +1,8)
	audio_play_sound(sfx_scrollMenu,0,false)
}

if(ceil(selected) >= array_length(options)){
	MoveObject(self,"selected",selected, 0,8)
}else
if(floor(selected) < 0){
	MoveObject(self,"selected",selected, array_length(options)-1,8)
}

if(InputGet(global.input_confirm) = INPUT_STATE.PRESSED){
	var S = array_get(options,selected)
	switch(S){
		case "RESUME":
		audio_resume_sound(b_chart_loader.song_vocals)
		audio_resume_sound(b_chart_loader.song_inst)
		instance_destroy(self);
		break;
		case "RESTART":
		room_restart();
		instance_destroy(self);
		break;
		case "BOTPLAY":
		global.botplay = !global.botplay
		break;
		case "EXIT":
		room_goto(room_menu);
		instance_destroy(self);
		break;
	}
	//audio_play_sound(sfx_cancelMenu,0,true)
}