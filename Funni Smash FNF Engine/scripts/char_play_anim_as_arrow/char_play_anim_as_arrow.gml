///@arg anim
function char_play_anim_as_arrow(anim){
	linked_ui_arrow.linked_player.img_current = 0
	linked_ui_arrow.linked_player.img_timer = 0
	linked_ui_arrow.linked_player.state_target = arrowtochar(anim)
}