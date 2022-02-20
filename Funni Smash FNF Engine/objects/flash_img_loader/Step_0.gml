if(InputGet(global.input_up) == INPUT_STATE.PRESSED && line[0] > -1){
	line[0] += 1
}
if(InputGet(global.input_down) == INPUT_STATE.PRESSED && line[0] > 0){
	line[0] -= 1
}
if(InputGet(global.input_left) == INPUT_STATE.PRESSED && line[1] > 1){
	line[1] -= 1
}
if(InputGet(global.input_right) == INPUT_STATE.PRESSED && line[1] > 0){
	line[1] += 1
}