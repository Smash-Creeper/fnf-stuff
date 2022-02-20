if(!surface_exists(_menu_surf_l2)){
	_menu_surf_l2 = surface_create(1280,720)
}
{/*
surface_set_target(_menu_surf)
switch(_current_menu){
	case 0:
	var proc = 0
	repeat(array_length(buttons[_current_menu])){
		var TXT = array_get(buttons[_current_menu],proc)
		var w = string_width(TXT)
		var h = string_height(TXT)
		var xx = 65
		var yy = funi_yoff + 100 + (h*1.5) * proc
	//	draw_sprite_ext_backdrop(spr_pixel,0,63,funi_yoff +98+ (h*1.5) * proc,w+4,h+4,0,c_ltgray,1,2,-45,c_black,1)
		var BI = array_get(button_types[_current_menu],proc)
		var BTF = array_get(BI,1)
		
		if(BTF = true){
			switch(proc){
				case 0:
				with(b_charter){
					var df = song_title
					song_title = get_string("Song Title",song_title)
					song_title = (song_title = undefined ? df : song_title)
				}
				array_set(array_get(button_types[_current_menu],proc),1,false)
				break;
				case 1:
				draw_set_font(f_debug)
				var iproc = 0
				repeat(array_length(global.insturms)){
					var L = array_length(global.insturms)
					var ITXT = string(audio_get_name(array_get(global.insturms,iproc)))

					var IW = string_width(ITXT)
					var IH = string_height(ITXT)
					///Add proc support to this also make sure it displays the text of each vocal/inst as well as it having each list entry be like its own button for the charters
					draw_rectangle_color(xx,yy+IH+(IH*iproc),xx+IW,yy+IH+IH+(IH*(iproc)),c_white,c_white,c_white,c_white,false)
					draw_rectangle_color(xx,yy+IH+(IH*iproc),xx+IW,yy+IH+IH+(IH*(iproc)),c_black,c_black,c_black,c_black,true)
					iproc += 1
				}
				var iproc = 0
				repeat(array_length(global.insturms)){
					var L = array_length(global.insturms)
					var ITXT = string(audio_get_name(array_get(global.insturms,iproc)))

					var IW = string_width(ITXT)
					var IH = string_height(ITXT)
					///Add proc support to this also make sure it displays the text of each vocal/inst as well as it having each list entry be like its own button for the charters
					draw_set_color(c_black)
					draw_text(xx,yy + IH+ (IH*iproc) + 6,ITXT)
					iproc += 1
				}
				break;
			}
		}
		
		proc += 1
	}
	break;
}
surface_reset_target();
draw_surface_ext(_menu_surf,0,funi_yoff + 0,_extend_amount,_extend_amount,0,c_white,1)
*/
}
if(debug_mode){
	draw_set_color(c_white)
	draw_text(0,20,string(_current_menu))
	draw_text(0,40,string(_current_button))
	draw_text(0,60,string(_menu_is_extended))
	draw_text(0,80,string(_menu_is_extending))
	draw_text(0,100,string(_extend_amount))
	draw_text(0,120,string(_extend_duration))
	draw_text(0,140,string(_extend_target))
}

