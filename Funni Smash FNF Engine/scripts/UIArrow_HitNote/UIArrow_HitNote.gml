function UIArrow_HitNote(){
	{/*
	var A;
	if(cpu = false){
		var A = instance_nearest(x,y,b_arrow)
		with(A){
			if(linked_ui_arrow.cpu = false && linked_ui_arrow.detect_arrow && x = linked_ui_arrow.x && (y <= linked_ui_arrow.y + getYfromStrum(global.mercy_length * 2) && y >= linked_ui_arrow.y - getYfromStrum(global.mercy_length * 2))){
				with(linked_ui_arrow){
					if(arrow_state != 8){
						arrow_state = 8
					}
				}
				if(length > 0 || linked_ui_arrow.detect_arrow_hold){
					y = linked_ui_arrow.y
					locked = true
				}
				event_user(0);
			}
			
		}
	}else{
		var A = instance_nearest(x,y,b_arrow)
		with(A){
			if(x = linked_ui_arrow.x && (y <= linked_ui_arrow.y + getYfromStrum(global.mercy_length * 2)) && linked_ui_arrow.linked_player.cpu = true && self._must_hit = true){
				with(linked_ui_arrow){
					if(arrow_state != 8){
						arrow_state = 8
					}/*
					linked_player.img_current = 0
					linked_player.img_timer = 0
					linked_player.state_target = arrowtochar(arrow_state_default+arrow_state)
					_safe_frames = global.safe_frames
				}
				event_user(0);
			}
		}
	}
	return A*/
	}
	/*var A = arrow_nearest(x,y,ArwMustToDir(arrow_state_default))
	if(instance_exists(A)){
	with(A){
		if(y >= 103 - getYfromStrum(global.mercy_length) && y <= 103 + getYfromStrum(global.mercy_length) && linked_ui_arrow.detect_arrow = true){
				event_user(0);
				linked_ui_arrow.arrow_state = 8
				if(length > 0){
					linked_ui_arrow.detect_arrow_hold = true
					show_debug_message("linked_ui_arrow.detect_arrow_hold = true")
				}
			}
			//A.
		}
	}
	return A;*/
	var A = arrow_nearest(x,y,self.arrow_state_default)

	if(instance_exists(A) &&  point_distance(x, y, A.x, A.y) <= getYfromStrum(global.mercy_length * (2))){
		with(A){
			event_user(0);
			linked_ui_arrow.arrow_state = 8
			if(length > 0){
				linked_ui_arrow.detect_arrow_hold = true
				show_debug_message("linked_ui_arrow.detect_arrow_hold = true")
			}
		}
		show_debug_message("Arrow is in range!")
	}
	return (instance_exists(A) ? A : noone);
}