///@arg Stage
function load_stage(){
	var STAG = argument[0]
	///If theres a stage already loaded delete assets from previously loaded stage
	if(variable_instance_exists(self,"stage_asset")){
		var dproc = 0;
		repeat(array_length(stage_asset)){
			instance_destroy(stage_asset[dproc]);
			dproc += 1
		}
		stage_is_loaded = false;
	}
	
	///Load the stage
	if(stage_is_loaded = false){
		switch(STAG){
			case STAGE.STAGE:
			selfscroll_factor = 0.9
			var proc = 0
			repeat(3){
				var de = - proc
				switch(proc){
					case 0:
					stage_asset[proc] = instance_create_depth(-600,-900,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][0]
					stage_asset[proc].scroll_factor = 0.9
					break;
					case 1:
					stage_asset[proc] = instance_create_depth(-650,3860,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][1]
					stage_asset[proc].scroll_factor = 0.9
					stage_asset[proc].image_xscale = 1.1
				//	stage_asset[proc].image_yscale = 1.1
					break;
					case 2:
					stage_asset[proc] = instance_create_depth(-410,-470,BATTLE_DEPTH.STAGE_HIGH + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_HIGH + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][2]
					stage_asset[proc].scroll_factor = 0.8
		//			stage_asset[proc].image_xscale = 0.9
				//	stage_asset[proc].image_yscale = 0.9
					break;
				}
				proc += 1
			}
			relative_layer = 0
			var camoffx = (camera.x+((window_get_width()/2) * -camera.scale_x))
			player_cords[0] = [4330,1740]
			player_cords[1] = [-2100,100]
			gf_cords = [400,130]
			with(camera){
				zoom = 1//.1
				if(instance_exists(b_chart_loader)){
				battle_cam = true
				}
				battle_cam_target_player = 0
			//	event_perform(ev_room_start,0)
			}
			break;
			case STAGE.PHILLY:
			selfscroll_factor = 0.3
			var proc = 0
			repeat(4){
				var de = - proc
				switch(proc){
					case 0:
					stage_asset[proc] = instance_create_depth(-100,550,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.PHILLY][0]
				//	stage_asset[proc].image_xscale = 1.3
				//	stage_asset[proc].image_yscale = 1.3
					stage_asset[proc].scroll_factor = 0.9;
					break;
					case 1:
					stage_asset[proc] = instance_create_depth(-10,0,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.PHILLY][1]
					stage_asset[proc].scroll_factor = 0.3
					stage_asset[proc].image_xscale = 0.85
				//	stage_asset[proc].image_yscale = 1.1
					break;
					case 2:
					stage_asset[proc] = instance_create_depth(-40,50,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.PHILLY][2]
					stage_asset[proc].scroll_factor = 0.3
		//			stage_asset[proc].image_xscale = 0.9
				//	stage_asset[proc].image_yscale = 0.9
					break;
					case 3:
					stage_asset[proc] = instance_create_depth(-40,stage_asset[2].y,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
					stage_asset[proc].tdepth = BATTLE_DEPTH.STAGE_LOW + de
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.PHILLY][3]
					stage_asset[proc].scroll_factor = 0.3
		//			stage_asset[proc].image_xscale = 0.9
				//	stage_asset[proc].image_yscale = 0.9
					break;
				}///Possibly redo scrolling system study code of OG fnf and Haxe to fix mistake
				proc += 1
			}
			player_cords[0] = [470,450]
			player_cords[1] = [-200,400]
			gf_cords = [150,485]
			relative_layer = 3
			with(camera){
				zoom = 1.05
				if(instance_exists(b_chart_loader)){
				battle_cam = true
				}
				battle_cam_target_player = 0
			//	event_perform(ev_room_start,0)
			}
			break;
			
			case 2:
			selfscroll_factor = 0.3
			stage_asset[0] = instance_create_depth(0,0,BATTLE_DEPTH.STAGE_LOW,epic_stage)
			player_cords[0] = [470,450]
			player_cords[1] = [-200,400]
			gf_cords = [150,485]
			relative_layer = 0
			with(camera){
				zoom = 1.05
				if(instance_exists(b_chart_loader)){
				battle_cam = true
				}
				battle_cam_target_player = 0
			//	event_perform(ev_room_start,0)
			}
			break;
			case 3:
			selfscroll_factor = 0
			stage_asset[0] = instance_create_depth(0,0,BATTLE_DEPTH.STAGE_LOW ,asset_loader)
			stage_asset[0].tdepth = BATTLE_DEPTH.STAGE_LOW
			stage_asset[0].sprite_index = global.stage_sprite[STAGE.DEATH][0]
			stage_asset[0].scroll_factor = 0
			player_cords[0] = [3171-sprite_get_width(global.stage_sprite[STAGE.DEATH][0])/2,1931-sprite_get_height(global.stage_sprite[STAGE.DEATH][0])/2]
			player_cords[1] = [1123-sprite_get_width(global.stage_sprite[STAGE.DEATH][0])/2,2062-sprite_get_height(global.stage_sprite[STAGE.DEATH][0])/2]
			gf_cords = [2465,229]
			relative_layer = 0
			with(camera){
				zoom = 2
				if(instance_exists(b_chart_loader)){
				battle_cam = true
				}
				battle_cam_target_player = 0
			//	event_perform(ev_room_start,0)
			}
			camclampx = [0,0]
			camclampy = [0,0]
			break;
			
			default:
			selfscroll_factor = 0.9
			var proc = 0
			repeat(3){
				var de = - proc
				switch(proc){
					case 0:
					stage_asset[proc] = instance_create_depth(-600,-900,BATTLE_DEPTH.STAGE_LOW + de,asset_loader)
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
					stage_asset[proc].sprite_index = global.stage_sprite[STAGE.STAGE][1]
					stage_asset[proc].scroll_factor = 1.3
		//			stage_asset[proc].image_xscale = 0.9
				//	stage_asset[proc].image_yscale = 0.9
					break;
				}
				proc += 1
			}
			relative_layer = 0
			var camoffx = (camera.x+((window_get_width()/2) * -camera.scale_x))
			player_cords[0] = [770,450]
			player_cords[1] = [100,100]
			gf_cords = [400,130]
			with(camera){
				zoom = 1//.1
				if(instance_exists(b_chart_loader)){
				battle_cam = true
				}
				battle_cam_target_player = 0
			//	event_perform(ev_room_start,0)
			}
			break;
		}
	}
	stage_is_loaded = true;
}