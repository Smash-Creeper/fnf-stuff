if(starting = false){
	if(InputGet(global.input_confirm) = INPUT_STATE.PRESSED){
		MoveObject(self,"start_img_current",0,8,60,10)
		colt = 255/4.25
		starting = true
		alarm[0] = 60;
		global.menu_mus = audio_play_sound(sfx_confirmMenu,0,false)
	}
}