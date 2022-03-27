if(debug_mode){
	if(keyboard_check(ord("0")) && !keyboard_check(ord("P"))){
		b_stage.stage_asset[0].x += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("1")) && !keyboard_check(ord("P"))){
		b_stage.stage_asset[1].x += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("2"))){
		b_stage.stage_asset[2].x += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("0")) && keyboard_check(ord("P"))){
		battle.player[0].ogx += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("1")) && keyboard_check(ord("P"))){
		battle.player[1].ogx += (keyboard_check(vk_shift) ? -10 : 10)
	}
	show_debug_message("0X: " + string(b_stage.stage_asset[0].x))
	show_debug_message("1X: " + string(b_stage.stage_asset[1].x))
	show_debug_message("2X: " + string(b_stage.stage_asset[2].x))
	show_debug_message("P0X: " + string(battle.player[0].ogx))
	show_debug_message("P1X: " + string(battle.player[1].ogx))
}