if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	//selected -= 1
	MoveObject(self,"selected",selected, floor(selected) -1,8)
}else
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	MoveObject(self,"selected",selected, ceil(selected) +1,8)
}

if(ceil(selected) >= array_length(options)){
	MoveObject(self,"selected",selected, 0,8)
}else
if(floor(selected) < 0){
	MoveObject(self,"selected",selected, array_length(options)-1,8)
}

if(InputGet(global.input_confirm) = INPUT_STATE.PRESSED){
		switch(selected){
			case 0:
			///Open keybind menu
			break;
			case 1:
			global.onechartmode = !global.onechartmode
			break;
			case 2:
			global.optimizedmode = !global.optimizedmode
			break;
		}
		audio_play_sound(sfx_confirmMenu,0,false)
	}
if(InputGet(global.input_cancel) == INPUT_STATE.PRESSED){
	room_goto(room_menu)
}