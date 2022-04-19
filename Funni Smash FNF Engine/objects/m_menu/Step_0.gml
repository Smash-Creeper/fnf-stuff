if(active){
	if(InputGet(global.input_up) = INPUT_STATE.PRESSED){
		selected -= 1
		audio_play_sound(sfx_scrollMenu,0,false)
	}else
	if(InputGet(global.input_down) = INPUT_STATE.PRESSED){
		selected += 1
		audio_play_sound(sfx_scrollMenu,0,false)
	}

	if(selected >= array_length(buttons)){
		selected = 0
	}else
	if(selected < 0){
		selected = array_length(buttons)-1
	}
	if(InputGet(global.input_confirm) = INPUT_STATE.PRESSED){
		switch(selected){
			case 0:
			m_bg.flash = true
			alarm[0] = 40
			break;
			case 1:
			m_bg.flash = true
			alarm[0] = 40
			break;
			case 2:
			m_bg.flash = true
			alarm[0] = 40
			break;
		}
		audio_play_sound(sfx_confirmMenu,0,false)
	}
}