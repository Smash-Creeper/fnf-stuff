
var A = sin(siner1/45) * 15
var COL = make_color_rgb(255,239,239)
{/*
if(!surface_exists(_menu_surf)){
	_menu_surf = surface_create(1280,720)
}
draw_sprite_ext(spr_pixel,0,0,0,window_get_width(),window_get_height(),0,c_black,_extend_amount-0.2)
surface_set_target(_menu_surf)

var proc = 0
repeat(array_length(menus)){
	var hw = 600/array_length(menus)
	var HTXT = array_get(menus,proc)
	if(_current_menu != proc){
	draw_sprite_ext_backdrop(spr_pixel,0,55 + hw*proc,30,hw - 5,50,0,COL,1,5,225,c_black,1)
	draw_text_color(58 + hw*proc,55,string(HTXT),c_black,c_black,c_black,c_black,1)
	}
	proc += 1
}
draw_sprite_ext_backdrop(spr_pixel,0,50,80,600,480,0,COL,1,10,225,c_black,1)
var proc = 0
repeat(array_length(menus)){
	var hw = 600/array_length(menus)
	var HTXT = array_get(menus,proc)
	if(_current_menu = proc){
		draw_sprite_ext(spr_pixel,0,55 + hw*proc, 29, hw+2,52,0,c_black,1)
		draw_sprite_ext_backdrop(spr_pixel,0,57 + hw*proc,30,hw - 5,50,0,COL,1,5,225,c_black,1)
		draw_text_color(60 + hw*proc,55,string(HTXT),c_black,c_black,c_black,c_black,1)
	}
	proc += 1
}
draw_sprite_ext(spr_pixel,0,50,80,600,2,0,c_black,1)
}

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
		var BT = array_get(BI,0)
		
		if((mouse_x >= xx-2 && mouse_x <= xx-2 + w + 4) && (mouse_y >= camera.y + yy-2 && mouse_y <= camera.y + yy-2 + h+4) && mouse_check_button_pressed(mb_left) && _disabled_buttons = false){
			switch(BT){
				case CHARTER_MENU_TYPE.TEXT:
				case CHARTER_MENU_TYPE.LIST:
				array_set(BI,1,true)
				_disabled_buttons = true
				break
			}
		}else if(((mouse_x < xx-2 || mouse_x > xx-2 + w + 4) || (mouse_y < camera.y + yy-2 || mouse_y > camera.y + yy-2 + h+4)) && mouse_check_button_pressed(mb_left)){
			if(BT = CHARTER_MENU_TYPE.LIST){	
				switch(_current_menu){
					case 1:
					var iproc = 0
					var L = array_length(global.insturms)
					var ITXT = string(audio_get_name(array_get(global.insturms,iproc)))
					var IH = string_height(ITXT)
					
					if(((mouse_x >= xx-2 && mouse_x <= xx-2 + w + 4) && (mouse_y < camera.y + yy-2 || mouse_y > camera.y + yy-2 + h+4 + IH*L)) && mouse_check_button_pressed(mb_left)){
						array_set(BI,1,false)
						_disabled_buttons = false
					}
					
					break;
				}
			}else{
				switch(BT){
					case CHARTER_MENU_TYPE.LIST:
					array_set(BI,1,false)
					_disabled_buttons = false
					break
				}
			}
		}else{	
			switch(BT){
				case CHARTER_MENU_TYPE.TEXT:
				array_set(BI,1,false)
				break
			}
		}
		var BTF = array_get(BI,1)
		draw_button_ext(xx,yy,w+4,h+4,BTF,c_ltgray,c_dkgray,1,1)
		
		draw_text_ext_transformed_color(xx,yy, TXT, 1, w,1,1,0,c_black,c_black,c_dkgray,c_black,1)
		
		proc += 1
	}
	break;
}

surface_reset_target();
draw_surface_ext(_menu_surf,0,funi_yoff + 0,_extend_amount,_extend_amount,0,c_white,1)
*/}
if(!surface_exists(_menu_surf)){
	_menu_surf = surface_create(1280,720)
}
draw_sprite_ext(spr_pixel,0,0,0,window_get_width(),window_get_height(),0,c_black,_extend_amount-0.2)
surface_set_target(_menu_surf)
var proc = 0
repeat(array_length(menus)){
	var hw = 600/array_length(menus)
	var HTXT = array_get(menus,proc)
	if(_current_menu != proc){
	draw_sprite_ext_backdrop(spr_pixel,0,55 + hw*proc,30,hw - 5,50,0,COL,1,5,225,c_black,1)
	draw_text_color(58 + hw*proc,55,string(HTXT),c_black,c_black,c_black,c_black,1)
	}
	proc += 1
}
draw_sprite_ext_backdrop(spr_pixel,0,50,80,600,480,0,COL,1,10,225,c_black,1)
var proc = 0
repeat(array_length(menus)){
	var hw = 600/array_length(menus)
	var HTXT = array_get(menus,proc)
	if(_current_menu = proc){
		draw_sprite_ext(spr_pixel,0,55 + hw*proc, 29, hw+2,52,0,c_black,1)
		draw_sprite_ext_backdrop(spr_pixel,0,57 + hw*proc,30,hw - 5,50,0,COL,1,5,225,c_black,1)
		draw_text_color(60 + hw*proc,55,string(HTXT),c_black,c_black,c_black,c_black,1)
	}
	proc += 1
}
draw_sprite_ext(spr_pixel,0,50,80,600,2,0,c_black,1)
surface_reset_target();
draw_surface_ext(_menu_surf,0,0,_extend_amount,_extend_amount,0,c_white,1)
draw_set_font(f_debug)