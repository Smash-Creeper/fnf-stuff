var proc = 0
draw_set_font(f_freeplay_menu)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_black)
repeat(array_length(options)){
	var STR = array_get(options,proc)
	if(proc != selected){
		draw_text(235 + 55 * (proc - selected),360 + 110 * (proc - selected) - string_height(STR)/2, string_upper(STR))
	}else{
		draw_text(235, 360 - string_height(STR)/2, string_upper(STR))
	}
	proc += 1
}