function UIArrow_HitNote(){
	var A = arrow_nearest(x,y,self.arrow_state_default)

	if(instance_exists(A) &&  point_distance(x, y, A.x, A.y) <= getYfromStrum(global.mercy_length * (2))){
		with(A){
			event_user(0);
			linked_ui_arrow.arrow_state = 8
			if(length > 0){
				linked_ui_arrow.detect_arrow_hold = true
	//			show_debug_message("linked_ui_arrow.detect_arrow_hold = true")
			}
		}
	//	show_debug_message("Arrow is in range!")
	}
	return (instance_exists(A) ? A : noone);
}