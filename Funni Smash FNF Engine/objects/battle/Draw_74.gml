if(!surface_exists(battle.ui_surface)){
	battle.ui_surface = surface_create(window_get_width(),window_get_height());
}else{
surface_set_target(ui_surface);
draw_clear_alpha(c_white,0);
surface_reset_target();
}