if(chart_is_loaded = true){
	//draw_fnf_stage_charter(stage)
	
	if(BG != "" && sprite_exists(BG)){
		draw_sprite_ext(BG,0,0,-40,funni_scaler(BG,0,1280),funni_scaler(BG,1,720),0,c_white,1);
	}
	
	draw_grid(grid_p2_x,grid_y,grid_size,grid_size,ui_arrow_count,section_square_count,c_ltgray,c_gray)
	draw_grid(grid_p1_x,grid_y,grid_size,grid_size,ui_arrow_count,section_square_count,c_ltgray,c_gray)
	draw_sprite_ext(spr_pixel,0,grid_p2_x+grid_size*ui_arrow_count,grid_y,grid_size,grid_p1_height,0,c_dkgray,1)
	draw_grid(grid_p2_x+grid_size*ui_arrow_count,grid_y,1,grid_p1_height,3,1,c_black,c_white)
	draw_grid(grid_p2_x+grid_size*(ui_arrow_count+1),grid_y,1,grid_p1_height,3,1,c_black,c_white)

	draw_line_color(grid_p2_x,grid_y-grid_size,grid_p2_x,grid_y + section_square_count*grid_size,c_lime,c_red)
	draw_line_color(grid_p1_x,grid_y-grid_size,grid_p1_x,grid_y + section_square_count*grid_size,c_lime,c_red)

	var crochet = ((60 / bpm) * 1000)
	var step_crochet = crochet / 4

	if(variable_instance_exists(self,"section_notes" + string(c_section))){
		var NC = variable_instance_get(self,"section_notes" + string(c_section))
		var proc = 0
		repeat(array_length(NC)){
			var ismid = 0
			var X = array_get(array_get(NC,proc),0)
			var POS = getYfromStrum(array_get(array_get(NC,proc),1))
			var DIR = array_get(array_get(NC,proc),2)
			var LENGTH = array_get(array_get(NC,proc),3)
			var TYPE = array_get(array_get(NC,proc),4)
			var PRIORITYLIST = function(){
				var D = argument[0];
				if(ui_arrow_count % 2 = 1 && ui_arrow_count > 4){
					switch(D){
						case 0:
						return 0;
						break;
						case 1:
						return 1;
						break;
						case 2:
						return 3;
						break;
						case 3:
						return 4;
						break;
						case 4:
						return 2;
						break;
					}
				}else{
					return D;
				}
			}
			var AE = 15 + DIR//PRIORITYLIST(DIR)
			var AHE = 20 + DIR// PRIORITYLIST(DIR)
			var sx = 1/global.img_width[AE][0] * grid_size
			var sy = 1/global.img_height[AE][0] * grid_size
			var slx = 1/global.img_width[AHE][0] * (grid_size/2)
			var sly = 1/global.img_height[AHE][0] * LENGTH
			var shh = real(global.img_height[AHE][0])
			var shw = real(global.img_width[AHE][0])
			var X = (X > 640 ? (grid_p1_x + PRIORITYLIST(DIR)*grid_size + grid_size/2) : (grid_p2_x + PRIORITYLIST(DIR)*grid_size + grid_size/2))
			draw_text(0,20,string(X))
			draw_text(0,40,string(POS))
			draw_text(0,60,string(DIR))
			
			var ALP = ((POS > getYfromStrum(song_pos)) ? 1 : 0.5)
			draw_flash_sprite_ext(global.arrow_sprites[TYPE],AE,0,X,POS - (grid_p1_height * c_section),sx,sy,image_angle,c_white,ALP)
			draw_flash_sprite_ext(global.arrow_sprites[TYPE],AHE,0,X,POS - (grid_p1_height * c_section),(1/shw) * 10,(1/shh) * getYfromStrum(LENGTH),image_angle,image_blend,ALP,SPRITE_ORIGIN.TOP_MIDDLE)
			draw_text_color(X,POS - (grid_p1_height * c_section),array_get(array_get(NC,proc),1),c_white,c_white,c_white,c_white,1)
			proc += 1
		}
	}

	var proc = 0
	if(variable_instance_exists(self,"section_events" + string(c_section))){
		var NC = variable_instance_get(self,"section_events" + string(c_section))
		var proc = 0
		repeat(array_length(NC)){
			var POS = getYfromStrum(array_get(array_get(NC,proc),0))
			var TYPE = array_get(array_get(NC,proc),1)
			var COL = array_get(array_get(NC,proc),3)
			draw_sprite_ext(global.spr_event_note,0,640,POS - (grid_p1_height * c_section),1,1,0,COL,0.9)
			//draw_sprite_ext(spr_pixel,0,635,POS-2 - (grid_p1_height * c_section),13,4,0,COL,0.9)
			proc += 1
		}
	}

	if((mouse_x >= 620 && mouse_x <= 660)){
		//draw_sprite_ext(spr_pixel,0,635,mouse_y-2,13,4,0,c_aqua,0.9)
	
		switch(_event_type){
		case EVENT.CAMERA_SHIFT_P1:
		var COL = c_aqua
		break;
		case EVENT.CAMERA_SHIFT_P2:
		var COL = c_purple
		break;
		case EVENT.CAMERA_SHIFT_ZOOM:
		var COL = c_yellow
		break;
		case EVENT.CAMERA_SHIFT_ANGLE:
		var COL = c_red
		break;
		case EVENT.CAMERA_SHIFT_X:
		var COL = c_maroon
		break;
		case EVENT.CAMERA_SHIFT_Y:
		var COL = c_green
		break;
		case EVENT.CUSTOM:
		var COL = c_navy
		break;
		}
		draw_sprite_ext(global.spr_event_note,0,640,mouse_y,1,1,0,COL,0.9)
	}

	var proc = 0
	var tproc = 0
	var grid = 2
	var ismid = 0
	var AE = 15 + proc - ismid
	repeat(ui_arrow_count*2){
		var cg = variable_instance_get(self,"grid_p" + string(grid) + "_x")
		if(floor(ui_arrow_count/2) = proc && ui_arrow_count % 2 == 1){
			ismid = 1
			AE = 19//15 + proc
		}else{
			AE = 15 + proc - ismid
		}
		if((mouse_x >= cg + proc * grid_size && mouse_x <= cg + proc * grid_size + grid_size)){
			var sx = 1/global.img_width[AE][0] * grid_size
			var sy = 1/global.img_height[AE][0] * grid_size
			var mx = cg + proc*grid_size + grid_size/2
			draw_flash_sprite_ext(global.arrow_sprites[arrow_type],AE,0,mx,dummymouse_y,sx,sy,image_angle,c_white,1)
		}
		proc += 1
		tproc += 1
		if(proc >= ui_arrow_count){
			proc = 0
			ismid = 0
			grid = 1
		}
	}
	var by = (getYfromStrum(song_pos) - (grid_p1_height *c_section));
	bar_y = clamp(by,0,grid_p2_height)
	draw_sprite_ext(spr_pixel,0,bar_x,bar_y-2 + grid_y,grid_p1_width + grid_p2_width + mid_width + 8,4,0,c_lime,0.5)
}