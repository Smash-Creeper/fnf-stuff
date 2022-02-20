
function UIArrow_HitNote(){
	var A;
	if(cpu = false){
		var A = instance_nearest(x,y,b_arrow)
		with(A){
			if(linked_ui_arrow.cpu = false && linked_ui_arrow.detect_arrow && x = linked_ui_arrow.x && (y <= linked_ui_arrow.y + getYfromStrum(global.mercy_length) && y >= linked_ui_arrow.y - getYfromStrum(global.mercy_length))){
				with(linked_ui_arrow){
					if(arrow_state != 8){
						arrow_state = 8
					}
				}
				event_user(0);
			}
		}
	}else{
		var A = instance_nearest(x,y,b_arrow)
		with(A){
			if(x = linked_ui_arrow.x && (y <= linked_ui_arrow.y + getYfromStrum(global.mercy_length)) && linked_ui_arrow.linked_player.cpu = true && self._must_hit = true){
				with(linked_ui_arrow){
					if(arrow_state != 8){
						arrow_state = 8
					}/*
					linked_player.img_current = 0
					linked_player.img_timer = 0
					linked_player.state_target = arrowtochar(arrow_state_default+arrow_state)*/
					_safe_frames = global.safe_frames
				}
				event_user(0);
			}
		}
	}
	return A
}