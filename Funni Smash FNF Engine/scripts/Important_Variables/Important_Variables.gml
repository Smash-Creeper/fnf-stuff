// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Important_Variables(){
	global.player[0] = b_player_bf
	global.player[1] = b_player_dad
	global.gf = b_player_gf
	global.bpm = 120
	global.song_title = "Cans"
	global.inst = voc_tut
	global.vocal = voc_tut
	global.song_pos = 0
	global.safe_frames = 10
	global.mercy_length = 0.15
	global.botplay = true
	global.onechartmode = false
	
	///Dont touch these Variables unless ya know what your doing
	global.insturms = []
	global.vocs = []
	global.characters = []
	var i;
	for(i = 0; i < 1000 ;i += 1){
		var N = audio_get_name(i)
		if(N = "" || N = undefined || N = 0){
			break;
		}else if(string_pos("voc_", N) != 0){
			array_push(global.vocs, asset_get_index(N))
		}
	}
	var i = 0
	for(i = 0; i < 1000 ;i += 1){
		var N = audio_get_name(i)
		if(N = "" || N = undefined || N = 0){
			break;
		}else if(string_pos("inst_", N) != 0){
			array_push(global.insturms, asset_get_index(N))
		}
	}
	show_debug_message(string(global.vocs))
	show_debug_message(string(global.insturms))
	
	var i = 0
	for(i = 0; i < 1000 ;i += 1){
		var N = object_get_name(i)
		if(N = "" || N = undefined || N = 0){
			break;
		}else if(string_pos("b_player", N) != 0){
			array_push(global.characters, asset_get_index(N))
		}
	}
	
	global.playtesttime = 0.00
	global.chart_file = ""
	global.event_file = ""
	
//	global.chart_save_path = "C:/Users/user/Desktop/Sh/gmstuff/GitHub/Smash-Creeper-Games-Backups/Smashs Funni FNF Engine/datafiles/charts/"
//	global.event_save_path = "C:/Users/user/Desktop/Sh/gmstuff/GitHub/Smash-Creeper-Games-Backups/Smashs Funni FNF Engine/datafiles/charts/"
	
	enum SPRITE_ORIGIN{
		TOP_LEFT,
		TOP_MIDDLE,
		TOP_RIGHT,
		CENTER_LEFT,
		CENTER_MIDDLE,
		CENTER_RIGHT,
		BOTTOM_LEFT,
		BOTTOM_MIDDLE,
		BOTTOM_RIGHT,
		CUSTOM,
	}
	
	enum BATTLE_DEPTH{
		STAGE_LOW = -50,
		CHARACTER3 = -70,
		CHARACTER2 = -99,
		CHARACTER1 = -100,
		STAGE_HIGH = -150,
		UI_ARROW_P1 = -200,
		B_ARROW_P1 = -400,
		UI_ARROW_P2 = -300,
		B_ARROW_P2 = -500,
	}
	
	enum EVENT{
		CAMERA_SHIFT_P1,
		CAMERA_SHIFT_P2,
		CAMERA_SHIFT_ZOOM,
		CAMERA_SHIFT_ANGLE,
		CAMERA_SHIFT_X,
		CAMERA_SHIFT_Y,
		CUSTOM,
	}
	
	enum CHARTER_MENU{
		SONG_INFO,
		CHARTING,
		EVENTS,
		SECTIONS,
		OTHER,
	}
	
	enum CHARTER_MENU_TYPE{
		TEXT,
		LIST,
		IMG_LIST,
	}
	
	enum MOVER_TYPE{
		DURATION,
		SPEED
	}
	
	enum MENU_STATE{
		STORY_MODE,
		FREEPLAY
	}
	
	global.player_arrowpos = [[106+640,103],[217+640,103],[329+640,103],[441+640,103]]
	global.enemy_arrowpos = [[106,103],[217,103],[329,103],[441,103]]
	global.current_week = []
	global.current_week_song = 0
	global.menustate = -1
	
}