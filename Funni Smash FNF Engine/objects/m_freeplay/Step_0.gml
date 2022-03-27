if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	//selected -= 1
	MoveObject(self,"selected",selected, floor(selected) -1,8)
}else
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	MoveObject(self,"selected",selected, ceil(selected) +1,8)
}

if(ceil(selected) >= array_length(songs)){
	MoveObject(self,"selected",selected, 0,8)
}else
if(floor(selected) < 0){
	MoveObject(self,"selected",selected, array_length(songs)-1,8)
}

if(InputGet(global.input_confirm) = INPUT_STATE.PRESSED){
	var S = array_get(songs,selected)
	Play_Song(S)
}
if(InputGet(global.input_cancel) == INPUT_STATE.PRESSED){
	room_goto(room_menu)
}
if(keyboard_check_pressed(ord("1"))){
	global.onechartmode = !global.onechartmode
}