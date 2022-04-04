frame += 1/4;

if(state = PLAYER_STATE.GAME_OVER){
	if(InputGet(global.input_confirm) == INPUT_STATE.PRESSED){
		frame = 0;
		state = PLAYER_STATE.GAME_OVER_CONTINUE;
	}
}else if(state = PLAYER_STATE.GAME_OVER_CONTINUE){
	if(frame >= (array_length(global.char_img_x[CHARACTER.BF][state])-1)){
		room_goto(room_battle);
	}
}
frame = frame % (array_length(global.char_img_x[CHARACTER.BF][state])-1);
