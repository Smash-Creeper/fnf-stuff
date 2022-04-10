var ADIR = arrow_state_default + arrow_state

var IF = array_length(global.img_line[arrow_state_default + arrow_state]) - 1
var ic = value_restrict(img_current,0,IF,1)

var scalex = 1/100 * 70.06
var scaley = 1/100 * 70.06
image_xscale = 1/100 * 70.06
image_yscale = 1/100 * 70.06

///Update this so that it uses the draw_sprite_general without breaking when ever i rotate it
draw_flash_sprite_ext(global.arrow_sprites[arrow_skin],ADIR,ic,x,y,scalex,scaley,image_angle,image_blend,image_alpha)

var xo = x+lengthdir_x(flash_sprite_get_width(ADIR,ic)*scalex,image_angle+135)
var yo = y+lengthdir_y(flash_sprite_get_height(ADIR,ic)*scaley,image_angle+135)
//draw_sprite_ext(spr_pixel,0,x-3,y-3,6,6,0,c_red,1)
draw_set_color(c_white)
/*
if(debug_mode){
	draw_text(x,y,string(_safe_frames))
	draw_text(x,y+20,string(detect_arrow))
	draw_text(x,y+40,string(detect_arrow_hold))
}