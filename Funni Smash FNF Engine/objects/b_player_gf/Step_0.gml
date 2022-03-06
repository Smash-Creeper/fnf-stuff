img_timer += 1

if(img_timer >= round((1/FPS)*getFramesPerBeat()*2)){
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

x = ogx + b_stage.stage_asset[b_stage.relative_layer].x//* scroll_factor
y = ogy + b_stage.stage_asset[b_stage.relative_layer].y//* scroll_factor

scfx = x - scroll_x - camera.x * scroll_factor
scfy = y - scroll_y - camera.y * scroll_factor