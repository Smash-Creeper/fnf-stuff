stage = 0

freecam = false

switch(stage){
	case STAGE.STAGE:
	selfscroll_factor = 0.9
	var proc = 0
	repeat(3){
		var de = - proc
		switch(proc){
			case 0:
			stage_asset[proc] = instance_create_depth(-600,-200,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
			stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
			stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][0]
			stage_asset[proc].scroll_factor = 0.9
			break;
			case 1:
			stage_asset[proc] = instance_create_depth(-650,600,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
			stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
			stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][1]
			stage_asset[proc].scroll_factor = 0.9
			stage_asset[proc].image_xscale = 1.1
		//	stage_asset[proc].image_yscale = 1.1
			break;
			case 2:
			stage_asset[proc] = instance_create_depth(-500,-300,BATTLE_DEPTH.STAGE_HIGH + de,asset_loader)
			stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_HIGH + de
			stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][2]
			stage_asset[proc].scroll_factor = 1.3
//			stage_asset[proc].image_xscale = 0.9
		//	stage_asset[proc].image_yscale = 0.9
			break;
		}
		proc += 1
	}
	player_cords[0] = [1575,785]
	player_cords[1] = [980,600]
	gf_cords = [980 + (1575-980)/2,785 + (785-600)/2]
	relative_layer = 0
	with(camera){
		zoom = 1.1
		battle_cam = true
		battle_cam_target_player = 0
	//	event_perform(ev_room_start,0)
	}
	break;
}

