///@arg iconindex
///@arg x
///@arg y
function draw_icon(){
	var I = argument[0];
	var X = argument[1];
	var Y = argument[2];
	var xproc = 0
	var yproc = 0
	repeat(I){
		//draw_sprite_general(global.spr_icons,0,150 * xproc,150 * yproc,150 * xproc + 150, 150 * yproc + 150,X,Y,1,1,0,c_white,c_white,c_white,c_white,1)
		draw_sprite_general(global.spr_icons,0,0,0,150,150,X,Y,1,1,0,c_white,c_white,c_white,c_white,1)
		xproc += 1
		if(I*150 >= sprite_get_width(global.spr_icons)){
			yproc += 1
			xproc = 0
		}
	}
}