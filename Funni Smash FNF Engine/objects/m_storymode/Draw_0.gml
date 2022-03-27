var proc = 0
draw_sprite_ext(spr_pixel,0,0,0,1280,720,0,c_black,0.5)
draw_set_font(f_freeplay_menu)
draw_set_color(c_white);
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_sprite_ext(spr_pixel,0,0,0,1280,56,0,c_black,1)
draw_sprite_ext(spr_pixel,0,0,442,1280,278,0,c_black,1)
repeat(array_length(weeks)){
	var STR = array_get(array_get(weeks,proc),0)
	if(proc != selected){
		draw_text(640,521 + 110 * (proc - selected), string_upper(STR))
	}else{
		draw_text(640, 521, string_upper(STR))
		var stproc = 0
		repeat(array_length(array_get(weeks,proc))-3){
			draw_set_font(f_vcr)
			draw_set_color(make_color_rgb(229,87,119));
			draw_set_halign(fa_middle)
			draw_set_valign(fa_top)
			draw_text(193,548 + 28 * stproc,string(array_get(array_get(weeks,proc),3 + stproc)))
			draw_set_font(f_freeplay_menu)
			draw_set_color(c_white);
			draw_set_valign(fa_center)
			draw_set_halign(fa_middle)
			stproc += 1
		}
	}
	proc += 1
}
draw_sprite_ext(spr_pixel,0,0,56,1280,386,0,make_color_rgb(249,207,81),1)