///@desc Event Trigger
show_debug_message("Event triggered!")

switch(_event_type){
	case EVENT.CAMERA_SHIFT_P1:
	with(camera){
		battle_cam_target_player = 0
//		var tx = battle.player[0].scfx// - ((window_get_width()/2) * scale_x) + battle_cam_offset_x
//		var ty = battle.player[0].scfy// - ((window_get_height()/2) * scale_y) + battle_cam_offset_y
//		show_message(string(tx))
//		show_message(string(ty))
//		MoveObject(self,"x",x,tx,battle_cam_duration)
//		MoveObject(self,"y",y,ty,battle_cam_duration)
	}
	break;
	///There is a problem with the scfx and scfy values that causes them to be detected way off from where the player is
	///So fix that please, i have some ideas like maybe its because the camera position starts weird
	case EVENT.CAMERA_SHIFT_P2:
	with(camera){
		battle_cam_target_player = 1
/*		var tx = battle.player[1].scfx - ((window_get_width()/2) * scale_x) + battle_cam_offset_x
		var ty = battle.player[1].scfy - ((window_get_height()/2) * scale_y) + battle_cam_offset_y
		show_message(string(tx))
		show_message(string(ty))
		MoveObject(self,"x",x,tx,battle_cam_duration)
		MoveObject(self,"y",y,ty,battle_cam_duration)*/
	}
	break;
	case EVENT.CAMERA_SHIFT_ZOOM:
//	camera.target_zoom = value
	MoveObject(camera,"zoom",camera.zoom,value,10)
	break;
	case EVENT.CAMERA_SHIFT_ANGLE:
	camera.target_angle = value
	break;
	case EVENT.CAMERA_SHIFT_X:
	camera.battle_cam_offset_x = value
	break;
	case EVENT.CAMERA_SHIFT_Y:
	camera.battle_cam_offset_y = value
	break;
}
triggered = true
alarm[0] = 2