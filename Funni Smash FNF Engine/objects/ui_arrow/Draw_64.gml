var ADIR = arrow_state_default + arrow_state

var IF = array_length(global.img_line[arrow_state_default + arrow_state]) - 1
var ic = value_restrict(img_current,0,IF,1)

var scalex = 1/100 * 70.06
var scaley = 1/100 * 70.06
image_xscale = 1/100 * 70.06
image_yscale = 1/100 * 70.06

if(!surface_exists(_self_surface)){
	_self_surface = surface_create(1280,720)
}

surface_set_target(_self_surface)
draw_clear_alpha(c_white,0)
draw_flash_sprite_ext(global.arrow_sprites[0],ADIR,ic,x,y,scalex,scaley,image_blend,image_alpha)
surface_reset_target();
var xo = x+lengthdir_x(flash_sprite_get_width(ADIR,ic)*scalex,image_angle+135)
var yo = y+lengthdir_y(flash_sprite_get_height(ADIR,ic)*scaley,image_angle+135)
draw_surface_general(_self_surface,x-flash_sprite_get_width(ADIR,ic)/2,y-flash_sprite_get_height(ADIR,ic)/2,flash_sprite_get_width(ADIR,ic),flash_sprite_get_height(ADIR,ic),xo,yo,1,1,image_angle,image_blend,image_blend,image_blend,image_blend,image_alpha)
draw_sprite_ext(spr_pixel,0,x-3,y-3,6,6,0,c_red,1)
draw_set_color(c_white)

draw_text(x,y,string(_safe_frames))
draw_text(x,y+20,string(detect_arrow))
draw_text(x,y+40,string(detect_arrow_hold))