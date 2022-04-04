var repa = window_get_width();
var procx = 0
var state2numb = function(){
	switch(argument[0]){
		case PLAYER_STATE.IDLE:
		return 1;
		break;
		case PLAYER_STATE.RIGHT:
		return 4;
		break;
		case PLAYER_STATE.LEFT:
		return 3;
		break;
		case PLAYER_STATE.DOWN:
		return 2;
		break;
		case PLAYER_STATE.UP:
		return 5;
		break;
		case PLAYER_STATE.LEFT_MISSED:
		case PLAYER_STATE.DOWN_MISSED:
		case PLAYER_STATE.UP_MISSED:
		case PLAYER_STATE.RIGHT_MISSED:
		return 0;
		break;
	}
}
var STAT = state2numb(battle.player[camera.battle_cam_target_player].state)
gt = STAT * (180/4)
var gd = gt - ga
ga += gd/10
repeat(repa){
	draw_sprite_ext(spr_pixel,0,camera.x + 0-repa/2 + procx,camera.y + window_get_height()/2-360 + sin((siner+procx*4) / (global.bpm/4)) * ga,1,5,0,make_color_hsv((55 * funni_scaler(360,2,255)) + sin(procx) * (15 * funni_scaler(360,2,255)),255,255),1)
	procx += 1
}
siner += 1