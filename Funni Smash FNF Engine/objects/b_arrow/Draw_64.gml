if(!surface_exists(battle.ui_surface)){
	battle.ui_surface = surface_create(window_get_width(),window_get_height());
}else{
surface_set_target(battle.ui_surface);
//draw_clear_alpha(c_white,0);
show_debug_message("C")
var scalex = 1/100 * 70.06
var scaley = 1/100 * 70.06

var shh = real(global.img_height[arrow_type + 5][0])
var shw = real(global.img_width[arrow_type + 5][0])
var ehh = real(global.img_height[arrow_type + 10][0])
var ehw = real(global.img_width[arrow_type + 10][0])
var yss = (1/shh) * (getYfromStrum(length)* global.arrow_speed)
var yes = (getYfromStrum(length)* global.arrow_speed)//(1/ehh) * (getYfromStrum(length)* global.arrow_speed)
if(length > 0){
draw_flash_sprite_ext(global.arrow_sprites[0],arrow_type+5,0,x,y,(1/shw) * 40,yss,image_angle,image_blend,image_alpha,SPRITE_ORIGIN.TOP_MIDDLE)
draw_flash_sprite_ext(global.arrow_sprites[0],arrow_type+10,0,x,y + yes-global.arrow_speed,(1/ehw) * 40,scaley,image_angle,image_blend,image_alpha,SPRITE_ORIGIN.TOP_MIDDLE)
}
if(!was_locked){
	draw_flash_sprite_ext(global.arrow_sprites[0],arrow_type,0,x,y,scalex,scaley,image_angle,image_blend,image_alpha)
}
surface_reset_target();
}
/*draw_set_color(c_black)
if(debug_mode){
	draw_text(x,y-80,string(getYfromStrum(length)))
	draw_text(x,y-80+20,string(length))
	draw_text(x,y-80+40,string(locked))

	draw_rectangle(-10,-10,10,10,false)
}