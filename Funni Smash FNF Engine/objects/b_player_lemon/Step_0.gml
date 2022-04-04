img_timer += 1

var crochet = ((60 / global.bpm) * 1000);
var stepCrochet = crochet / 4;

if(img_timer >= round((1/FPS)*(getFramesPerBeat()*2))){
	img_current += 1
	img_timer = 0
}
if(state != state_target){
	state = state_target
	if(state_target = PLAYER_STATE.LEFT && (facing != spr_facing)){
		state = PLAYER_STATE.RIGHT
	}else if(state_target = PLAYER_STATE.RIGHT && (facing != spr_facing)){
		state = PLAYER_STATE.LEFT
	}
}

if(img_current > array_length(global.char_img_x[char][state])-1){
	if(state != state_default){
		state_target = state_default
		state = state_default
	}
	img_current = 0
}



x = ogx + b_stage.stage_asset[b_stage.relative_layer].x - real(global.char_img_width[char][state][img_current])/2  //* scroll_factor
y = ogy + b_stage.stage_asset[b_stage.relative_layer].y - real(global.char_img_height[char][state][img_current])/2 //* scroll_factor

scfx = lerp(x,camera.x,scroll_factor)//x - scroll_x - (camera.x+((window_get_width()/2))) * scroll_factor
scfy = lerp(y,camera.y,scroll_factor)//y - scroll_y - (camera.y+((window_get_height()/2))) * scroll_factor

camoff_x = real(global.char_img_frameWidth[char][state][img_current]/3 * (facing = DIR.LEFT ? -1 : 1))
camoff_y = real(global.char_img_frameHeight[char][state][img_current]/3 * -1)