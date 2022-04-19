if(!surface_exists(ui_surface)){
	ui_surface = surface_create(window_get_width(),window_get_height());
}else{
surface_set_target(ui_surface);
//draw_clear_alpha(c_white,1);
var EQ = lerp(0,592,(global.hp/global.hpmax))//funni_scaler(global.hp,2,592)
//EQ = EQ
draw_sprite_ext(spr_pixel,0,window_get_width()/2 - 300,650,601,18,0,c_black,1 )
draw_sprite_ext(spr_pixel,0,window_get_width()/2 - 296,653,592,11,0,c_red,1)
draw_sprite_ext(spr_pixel,0,window_get_width()/2 + 296,653,-EQ,11,0,c_lime,1)
//dicon(0,window_get_width()/2 + 296 -EQ + 150,653-75,0,(global.hp <= global.hpmax/10 ? 1 : 0))//(0,window_get_width()/2 + 296-EQ,659)
var P1I = player[0].icon_index
var P1IXProc = 0
var P1IYProc = 0
repeat(P1I){
	P1IXProc += 1
	if(P1IXProc * 150 >= sprite_get_width(global.spr_icons)){
		P1IYProc += 1
		P1IXProc = 0
	}
}
var P1Losing = (global.hp <= global.hpmax/10 ? 1 : 0)
draw_sprite_general(global.spr_icons,0,150 * (P1IXProc + P1Losing),150 * P1IYProc,150,150,window_get_width()/2 + 296 -EQ + 150,653-75,-1,1,0,c_white,c_white,c_white,c_white,1)

var P2I = player[1].icon_index
var P2IXProc = 0
var P2IYProc = 0
repeat(P2I){
	P2IXProc += 1
	if(P2IXProc * 150 >= sprite_get_width(global.spr_icons)){
		P2IYProc += 1
		P2IXProc = 0
	}
}
var P2Losing = (global.hpmax - global.hp <= global.hpmax/10 ? 1 : 0)
draw_sprite_general(global.spr_icons,0,150 * (P2IXProc + P2Losing),150 * P2IYProc,150,150,window_get_width()/2 + 296 -EQ - 150,653-75,1,1,0,c_white,c_white,c_white,c_white,1)
surface_reset_target();
}
draw_surface(ui_surface,0,0)
///Make HP become real