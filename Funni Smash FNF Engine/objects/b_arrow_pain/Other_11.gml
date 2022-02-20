///@desc Note Miss
show_debug_message("Damage Arrow Miss!")

if(length <= 0){
	instance_destroy(self);
}else{
	locked = true
	was_locked = true
}

//char_play_anim_as_arrow(linked_ui_arrow.arrow_state_default+linked_ui_arrow.arrow_state)