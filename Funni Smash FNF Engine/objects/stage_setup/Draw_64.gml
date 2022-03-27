var col = make_color_rgb(140,140,140)
draw_sprite_ext(spr_pixel,0,32,32,306,434,0,col,1)
draw_set_font(f_pixel)
draw_text(36,233,"(+) Add new asset \nAssets:")
draw_set_color(c_black)
draw_rectangle(44,260,44+282,260+194,true)
var proc = 0
repeat(array_length(stage_assets)){
	draw_set_color(c_white)
	draw_rectangle(46,262,46+278,262+50,false)
	proc += 1
}