if(!chart_is_loaded){
	event_user(0);
}else
if(!instance_exists(b_charter_menu) || b_charter_menu._menu_is_extended = false || chart_is_loaded = true){
	
	if(audio_exists(audio_inst) && audio_exists(audio_vocal)){
		if(!paused && audio_is_paused(audio_inst)){
			audio_resume_sound(audio_inst)
			audio_resume_sound(audio_vocal)
		}else if(paused && audio_is_playing(audio_inst)){
			audio_pause_sound(audio_inst)
			audio_pause_sound(audio_vocal)
		}
	}else{
		event_user(2)
	}

	if(keyboard_check_pressed(vk_space)){
		paused = !paused
	}

	if(!paused){
		if(song_pos >= 0){
			song_pos = audio_sound_get_track_position(audio_inst)
		}else{
			song_pos += getStrumTime(2)
			audio_sound_set_track_position(audio_inst,song_pos)
			audio_sound_set_track_position(audio_vocal,song_pos)
		}
	}else{
		audio_sound_set_track_position(audio_inst,song_pos)
		audio_sound_set_track_position(audio_vocal,song_pos)
	}
	
	if(inst_muted){
		audio_sound_gain(audio_inst,0.00000000000000000000000000000010,0)
	}else{
		audio_sound_gain(audio_inst,1,0)
	}

	camera.y = -40

	if(keyboard_check(vk_shift)){
	dummymouse_y = mouse_y
	}else{
	dummymouse_y = (floor(mouse_y/grid_size) * grid_size) + grid_size / 2 //(floor(mouse_y/grid_size) * grid_size) + grid_size/2
	}

	if(keyboard_check(vk_shift)){
		var spShift = 0.06
	}else if(keyboard_check(vk_control)){
		var spShift = 0.01
	}else if(keyboard_check(vk_alt)){
		var spShift = 0.5
	}else{
		var spShift = 0.12
	}

	if(mouse_wheel_up()){
		song_pos -= spShift
	}else
	if(mouse_wheel_down()){
		song_pos += spShift
	}
	if(song_pos < 0){
		song_pos = 0
	}

	var proc = 0
	var grid = 2
	repeat(ui_arrow_count*2){
		var cg = variable_instance_get(self,"grid_p" + string(grid) + "_x")
		if((mouse_x >= cg + proc * grid_size && mouse_x <= cg + proc * grid_size + grid_size)){
			var mx = cg + proc*grid_size + grid_size/2
				if(mouse_check_button_pressed(mb_left)){
					var POS = getStrumTime(dummymouse_y + (grid_p1_height * c_section))//-(grid_y - dummymouse_y) + grid_size
					charter_add_note(mx,POS,proc,note_length,arrow_type)
				}
			}
		
		proc += 1
		if(proc >= 4){
			proc = 0
			grid = 1
		}
	}

	if(keyboard_check_pressed(ord("1"))){
		charter_add_note(grid_p2_x + 0*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),0,note_length,arrow_type)
	}																			 
	if(keyboard_check_pressed(ord("2"))){										 
		charter_add_note(grid_p2_x + 1*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),1,note_length,arrow_type)
	}																			
	if(keyboard_check_pressed(ord("3"))){										
		charter_add_note(grid_p2_x + 2*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),2,note_length,arrow_type)
	}																			 
	if(keyboard_check_pressed(ord("4"))){									 
		charter_add_note(grid_p2_x + 3*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),3,note_length,arrow_type)
	}																			 
	if(keyboard_check_pressed(ord("5"))){										 
		charter_add_note(grid_p1_x + 0*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),0,note_length,arrow_type)
	}																			 
	if(keyboard_check_pressed(ord("6"))){										 
		charter_add_note(grid_p1_x + 1*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),1,note_length,arrow_type)
	}																			
	if(keyboard_check_pressed(ord("7"))){										
		charter_add_note(grid_p1_x + 2*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),2,note_length,arrow_type)
	}																			
	if(keyboard_check_pressed(ord("8"))){										
		charter_add_note(grid_p1_x + 3*grid_size + grid_size/2,getStrumTime(bar_y+ (grid_p1_height * c_section)),3,note_length,arrow_type)
	}

	if((mouse_x >= 620 && mouse_x <= 660)){
		if(mouse_check_button_pressed(mb_left)){
			var POS = getStrumTime(mouse_y + (grid_p1_height * c_section))
			charter_add_event(POS,_event_type,_event_value)
		}
	}

	if(variable_instance_exists(self,"section_notes" + string(c_section))){
		var NC = variable_instance_get(self,"section_notes" + string(c_section))
		var proc = 0
		repeat(array_length(NC)){
			var X = array_get(array_get(NC,proc),0)
			var POS = getYfromStrum(array_get(array_get(NC,proc),1)) - (grid_p1_height * c_section)
			if((mouse_y >= POS - grid_size/2 && mouse_y <= POS + grid_size/2) && (mouse_x >= X - grid_size/2 && mouse_x <= X + grid_size/2)){
				if(mouse_check_button_pressed(mb_right)){
		//			show_debug_message("OWO IM DELETED, NOTE: " + string(proc) + " IS DEAD")
					charter_remove_note(proc)
					break;
				}
			}
			proc += 1
		}	
	}

	if(variable_instance_exists(self,"section_events" + string(c_section))){
		var EC = variable_instance_get(self,"section_events" + string(c_section))
		var proc = 0
		repeat(array_length(EC)){
			if((mouse_x >= 620 && mouse_x <= 660)){
				var POS = getYfromStrum(array_get(array_get(EC,proc),0)) - (grid_p1_height * c_section)
				if(mouse_check_button_pressed(mb_right) && (mouse_y >= POS - grid_size/2 && mouse_y <= POS + grid_size/2)){
					charter_remove_event(proc)
					break;
				}
			}
			proc += 1
		}
	}

	if(bar_y >= grid_p1_height){
		p_section = c_section
		c_section += 1
	}
	if(bar_y <= 0 && c_section != 0){
		p_section = c_section
		c_section -= 1
	}

	if(keyboard_check_pressed(vk_enter)){
		if(keyboard_check(vk_shift)){
			global.playtesttime = song_pos
			room_goto(room_battle)
		}else{
			room_goto(room_battle)
		}
	}
	{
		t_section = ceil(getYfromStrum(audio_sound_length(audio_inst)) / grid_p1_height)
	}
	var f = file_dropper_get_files()
	file_dropper_flush();
	if(array_length(f) > 0 && (string_last_pos(".png",array_get(f,0)) || string_last_pos(".jpg",array_get(f,0))) > 0 && (BG = "" || sprite_exists(BG))){
		BG = sprite_add(array_get(f,0),0,false,false,0,0)
	}
	//load_stage(stage)
	
}