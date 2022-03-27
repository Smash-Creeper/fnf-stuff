var proc = 0
draw_sprite_ext(spr_pixel,0,0,0,1280,720,0,c_black,0.5)
draw_set_font(f_freeplay_menu)
draw_set_color(c_white);
repeat(array_length(options)){
	var STR = array_get(options,proc)
	if(proc != selected){
		draw_text(235 + 110 * (proc - selected),360 + 110 * (proc - selected) - string_height(STR)/2, string_upper(STR))
	}else{
		draw_text(235, 360 - string_height(STR)/2, string_upper(STR))
	}
	proc += 1
}