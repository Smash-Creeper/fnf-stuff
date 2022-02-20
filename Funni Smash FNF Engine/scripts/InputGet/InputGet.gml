///@arg Input
function InputGet(){
	var proc = 0
	var put = argument[0]
	var result = INPUT_STATE.NONE
	repeat(array_length(put)){
		if(keyboard_check(array_get(put,proc)) = true){
			result = INPUT_STATE.HELD	
		}
		if(keyboard_check_pressed(array_get(put,proc)) = true){
			result = INPUT_STATE.PRESSED
		}
		if(keyboard_check_released(array_get(put,proc)) = true){
			result = INPUT_STATE.RELEASED
		}
		proc+=1
	}
	return result;
}