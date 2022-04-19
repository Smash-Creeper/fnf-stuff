if(!surface_exists(ui_surface)){
	ui_surface = surface_create(window_get_width(),window_get_height());
}else{
surface_set_target(ui_surface);
//draw_clear_alpha(c_white,1);
draw_set_halign(fa_center)
draw_text(window_get_width()/2,window_get_height/2,(global.botplay ? "BOTPLAY" : ""))
draw_set_halign(fa_left)
surface_reset_target();
}