dx = x
dy = y
if(!instance_exists(pause_menu)){
	if(linked_player != noone && instance_exists(linked_player)){
		cpu = linked_player.cpu
	}
	if(global.botplay){
		cpu = true
	}else{
		cpu = linked_player.cpu
	}

	///stop note from moving after pressed when length is more than 0
	{/*
	if(cpu = false){
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
			if(instance_exists(A) && A.length > 0 && (A.y <= y + getYfromStrum(global.mercy_length * 2) && A.y >= y - getYfromStrum(global.mercy_length * 2)) && A.linked_ui_arrow = self){
				detect_arrow_hold = true
				if(A.length > 0){
					A.y = self.y
				}
			}else{
				detect_arrow_hold = false
			}
		}
	}else{
		var A = UIArrow_HitNote();
		if(instance_exists(A) && A.length > 0 && (A.y <= y + getYfromStrum(global.mercy_length * 2) && A.y >= y - getYfromStrum(global.mercy_length * 2)) && A.linked_ui_arrow = self){
			arrow_state = 8
			_safe_frames = global.safe_frames
			if(A.length > 0){
				A.y = self.y
			}
		}
		if(_safe_frames > 0){
			if(arrow_state != 8){
				arrow_state = 8
			}
			_safe_frames-=1
		}else{
			arrow_state = 0
		}
	}*/
	}
	if(cpu = false){
	if(InputGet(input) == INPUT_STATE.PRESSED){
			if(arrow_state != 8){
				arrow_state = 4
			}
			_safe_frames = global.safe_frames
	}else if(InputGet(input) == INPUT_STATE.HELD){
		if(arrow_state != 8){
				arrow_state = 4
		}
		if(detect_arrow_hold){
			_safe_frames = global.safe_frames
		}
	}else{
		arrow_state = 0
	}

	if(detect_arrow){
		var A = UIArrow_HitNote();
	}

	if(_safe_frames > 0){
		_safe_frames-=1
		detect_arrow = true
		if(instance_exists(_target_note) && detect_arrow_hold){
			_target_note.y = y
		}
	}else{
		detect_arrow = false
		detect_arrow_hold = false
	}
	}else
	if(cpu = true){	
		var A = UIArrow_HitNote();
		if(instance_exists(A) &&  point_distance(x, y, A.x, A.y) <= getYfromStrum(global.mercy_length * (2))){
			if(arrow_state != 8){
					arrow_state = 8
			}
		}else{
			arrow_state = 0
		}
		_safe_frames = global.safe_frames
	}

	var A = arrow_nearest(x,y,self.arrow_state_default)

	if(instance_exists(A) &&  point_distance(x, y, A.x, A.y) <= getYfromStrum(global.mercy_length * (2))){
		A.contacted = true
	}

	img_current += 1
	}