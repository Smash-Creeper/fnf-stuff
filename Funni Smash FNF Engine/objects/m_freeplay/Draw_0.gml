var proc = 0
draw_set_font(f_freeplay_menu)
repeat(array_length(songs)){
	var STR = array_get(songs,proc)
	if(proc != selected){
		draw_text(150,360 + 110 * (proc - selected) - string_height(STR)/2, string_upper(STR))
	}else{
		draw_text(235, 360 - string_height(STR)/2, string_upper(STR))
	}
	proc += 1
}