///@desc Note Hit
//show_debug_message("Arrow Hit!")
if(length <= 0){
	linked_ui_arrow.arrow_state = 8
	instance_destroy(self);
}else{
	locked = true
	was_locked = true
	linked_ui_arrow.detect_arrow_hold = true
}

linked_ui_arrow.linked_player.img_current = 0
linked_ui_arrow.linked_player.img_timer = 0
linked_ui_arrow.linked_player.state_target = arrowtochar(linked_ui_arrow.arrow_state_default+linked_ui_arrow.arrow_state)