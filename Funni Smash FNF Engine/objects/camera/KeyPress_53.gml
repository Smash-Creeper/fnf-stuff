if(debug_mode){
	if(room != room_charter){
	var defa = battle_cam_duration
	battle_cam_duration = get_integer("Camera Transition Duration:", string(battle_cam_duration))
	battle_cam_duration = (battle_cam_duration != undefined ? battle_cam_duration : defa)
	}
}