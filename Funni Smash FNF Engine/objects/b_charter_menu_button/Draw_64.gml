surface_set_target(b_charter_menu._menu_surf)
draw_set_alpha(b_charter_menu._extend_amount)
switch(origin){
	case SPRITE_ORIGIN.TOP_LEFT:
	var lxeq = 0
	var rxeq = +width
	var lyeq = 0
	var ryeq = +height
	var sw = 0//string_width(text)//2
	var sh = 0//string_height(text)//2
	draw_set_halign(fa_middle)
	draw_set_valign(fa_top)
	break;
	case SPRITE_ORIGIN.CENTER_MIDDLE:
	var lxeq = -width/2
	var rxeq = +width/2
	var lyeq = -height/2
	var ryeq = +height/2
	var sw = +string_width(text)/2
	var sh = +string_height(text)/2
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	break;
}

if((mouse_x >= x +lxeq && mouse_x <= x +rxeq) && (mouse_y >= y +lyeq && mouse_y <= y + +ryeq) && (mouse_check_button_pressed(mb_left) || mouse_check_button(mb_left))){
	c_color = sl_color
}else
if((mouse_x >= x +lxeq && mouse_x <= x +rxeq) && (mouse_y >= y +lyeq && mouse_y <= y + +ryeq)){
	c_color = hv_color
}else{
	c_color = df_color
}

draw_rectangle_color((x+lxeq) - out_amt - 2,(y + lyeq) - out_amt,(x+rxeq) + out_amt-2,(y+ryeq) + out_amt,out_color,out_color,out_color,out_color,false)
draw_rectangle_color((x+lxeq) - out_amt,(y + lyeq) - out_amt - 2,(x+rxeq) + out_amt,(y+ryeq) + out_amt - 2,out_color,out_color,out_color,out_color,false)
draw_rectangle_color((x+lxeq),(y + lyeq),(x+rxeq),(y+ryeq),c_color,c_color,c_color,c_color,false)

draw_set_font(fnt)
draw_text_color(x + ((lxeq + rxeq)/2) + text_off_x,y + ((lyeq + ryeq)/2) + text_off_y,text,c_black,c_black,c_black,c_black,b_charter_menu._extend_amount)
draw_set_alpha(1);
surface_reset_target();
draw_surface_ext(b_charter_menu._menu_surf,0,0,b_charter_menu._extend_amount,b_charter_menu._extend_amount,0,c_white,1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)