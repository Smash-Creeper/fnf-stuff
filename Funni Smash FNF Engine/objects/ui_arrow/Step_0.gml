if(linked_player != noone && instance_exists(linked_player)){
	cpu = linked_player.cpu
}
if(global.botplay){
	cpu = true
}

if(cpu = false && !global.botplay){
	if(InputGet(input) == INPUT_STATE.PRESSED){
		if(arrow_state != 8){
			arrow_state = 4
		}
		_safe_frames = global.safe_frames
	//	linked_player.img_current = 0
	//	linked_player.img_timer = 0
	//	linked_player.state = arrowtochar(arrow_state_default+arrow_state)
	}else if(InputGet(input) == INPUT_STATE.HELD){
		if(arrow_state != 8){
			arrow_state = 4
		}
		if(detect_arrow_hold){
			_safe_frames = global.safe_frames
		}
	//	linked_player.img_current = 0
	//	linked_player.img_timer = 0
	//	linked_player.state = arrowtochar(arrow_state_default+arrow_state)
	}else{
		arrow_state = 0
	}

	if(_safe_frames > 0){
		_safe_frames-=1
		detect_arrow = true
	}else{
		detect_arrow = false
		detect_arrow_hold = false
	}

	if(detect_arrow){
		var A = UIArrow_HitNote()
		if(instance_exists(A) && A.length > 0){
			detect_arrow_hold = true
		}else{
			detect_arrow_hold = false
		}
	}
}else{
	UIArrow_HitNote();
	if(_safe_frames > 0){
		if(arrow_state != 8){
			arrow_state = 8
		}
		_safe_frames-=1
	}else{
		arrow_state = 0
	}
}

img_current += 1