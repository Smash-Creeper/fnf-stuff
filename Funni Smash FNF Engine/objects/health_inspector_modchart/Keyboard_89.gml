if(debug_mode){
	if(keyboard_check(ord("0")) && !keyboard_check(ord("P"))){
		b_stage.stage_asset[0].y += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("1")) && !keyboard_check(ord("P"))){
		b_stage.stage_asset[1].y += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("2"))){
		b_stage.stage_asset[2].y += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("0")) && keyboard_check(ord("P"))){
		battle.player[0].ogy += (keyboard_check(vk_shift) ? -10 : 10)
	}
	if(keyboard_check(ord("1")) && keyboard_check(ord("P"))){
		battle.player[1].ogy += (keyboard_check(vk_shift) ? -10 : 10)
	}
	show_debug_message("0Y: " + string(b_stage.stage_asset[0].y))
	show_debug_message("1Y: " + string(b_stage.stage_asset[1].y))
	show_debug_message("2Y: " + string(b_stage.stage_asset[2].y))
	show_debug_message("P0Y: " + string(battle.player[0].ogy))
	show_debug_message("P1Y: " + string(battle.player[1].ogy))
}