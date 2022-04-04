xml = ""
png = ""
png_spr = undefined
path = ""//string_delete(xml,string_last_pos("\\",xml),string_length(xml) - string_last_pos("\\",xml)+1) + "\\"
charfile = ""

current_animation = PLAYER_STATE.IDLE
current_animation_num = 0
current_frame = 0
anim_is_playing = false

current_origin = SPRITE_ORIGIN.CUSTOM
origin_x = 0
origin_y = 0

mouse_og_x = undefined
mouse_og_y = undefined

mouse_in_frame = false

char = CHARACTER.BF

loaded = false
loaded_frames = false

numToanim = function(){
	var A = argument[0]
	switch(A){
		case 0:
		return PLAYER_STATE.IDLE
		break;
		case 1:
		return PLAYER_STATE.LEFT
		break;
		case 2:
		return PLAYER_STATE.DOWN
		break;
		case 3:
		return PLAYER_STATE.UP
		break;
		case 4:
		return PLAYER_STATE.RIGHT
		break;
	}
}

frames[0]= array_create(0);
frames[1]= array_create(0);
frames[2]= array_create(0);
frames[3]= array_create(0);
frames[4]= array_create(0);



///Work on character creator/offset adjuster