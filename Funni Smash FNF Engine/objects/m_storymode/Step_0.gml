if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	//selected -= 1
	MoveObject(self,"selected",selected, floor(selected) -1,8)
	audio_play_sound(sfx_scrollMenu,0,false)
}else
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	MoveObject(self,"selected",selected, ceil(selected) +1,8)
	audio_play_sound(sfx_scrollMenu,0,false)
}

if(ceil(selected) >= array_length(weeks)){
	MoveObject(self,"selected",selected, 0,8)
}else
if(floor(selected) < 0){
	MoveObject(self,"selected",selected, array_length(weeks)-1,8)
}

if(InputGet(global.input_confirm) == INPUT_STATE.PRESSED){
	Play_Song(array_get(array_get(weeks,selected),3))
	var proc = 0
	global.current_week = []
	repeat(array_length(array_get(weeks,selected))-3){
		array_push(global.current_week,array_get(array_get(weeks,selected),proc + 3))
		show_debug_message(string(global.current_week))
		proc += 1
	}
	audio_play_sound(sfx_confirmMenu,0,false)	
	audio_stop_sound(global.menu_mus)
}
if(InputGet(global.input_cancel) == INPUT_STATE.PRESSED){
	room_goto(room_menu)
	audio_play_sound(sfx_cancelMenu,0,false)
}