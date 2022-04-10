///@arg iconindex
///@arg x
///@arg y
///@arg playerslot
///@arg losing
function draw_icon(){
	var P1I = argument[0];
	var X = argument[1];
	var Y = argument[2];
	var PLAYER = argument[3];
	var P1IXProc = 0
	var P1IYProc = 0
	repeat(P1I){
		P1IXProc += 1
		if(P1IXProc * 150 > sprite_get_width(global.spr_icons)){
			P1IYProc += 1
			P1IXProc = 0
		}
	}
	var P1Losing = argument[4];//(global.hp <= global.hpmax/10 ? 1 : 0)
	return draw_sprite_general(global.spr_icons,0,150 * (P1IXProc + P1Losing),150 * P1IYProc,150,150,X,Y,1 * PLAYER,1,0,c_white,c_white,c_white,c_white,1);

}