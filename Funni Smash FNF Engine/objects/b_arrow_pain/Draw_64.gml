var scalex = 1/100 * 70.06
var scaley = 1/100 * 70.06

var shh = real(global.img_height[arrow_type + 4][0]) * (linked_ui_arrow.image_angle >= 180 ? -1 : 1)
var shw = real(global.img_width[arrow_type + 4][0])
var shhv = shh/100 * 70.06
var proc = 0
if(length > 0){
	draw_flash_sprite_ext(global.arrow_sprites[1],arrow_type+4,0,x,y,(1/shw) * 40,(1/shh) * (getYfromStrum(length)* global.arrow_speed),image_angle,image_blend,image_alpha,SPRITE_ORIGIN.TOP_MIDDLE)
}
if(!was_locked){
	draw_flash_sprite_ext(global.arrow_sprites[1],arrow_type,0,x,y,scalex,scaley,image_angle,image_blend,image_alpha)
}
/*draw_set_color(c_black)
if(debug_mode){
	draw_text(x,y-80,string(getYfromStrum(length)))
	draw_text(x,y-80+20,string(length))
	draw_text(x,y-80+40,string(locked))
}