///@arg Player
///@arg Arrow
///@arg x/y[0/1]
function Arrow_GetInitPos(){
	var P = argument[0]
	var A = argument[1]
	var XY = argument[2]
	if(P = 0){
		var pp = array_get(array_get(global.player_arrowpos,A),XY);
		return pp;
		show_debug_message(string(pp));
	}else if(P = 1){
		var pp = array_get(array_get(global.enemy_arrowpos,A),XY);
		return pp;
		show_debug_message(string(pp));
	}
}