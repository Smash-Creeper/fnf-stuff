img_timer += 1
colt += 1
if(img_timer >= round((1/24)*60)){
	img_current += 1
	img_timer = 0
}

if(img_current > array_length(global.char_img_x[CHARACTER.GF][PLAYER_STATE.IDLE])-1){
	img_current = 0
}

draw_char_sprite_ext(global.spr_girlfriend,CHARACTER.GF,PLAYER_STATE.IDLE,img_current,912,705,1,1,make_color_hsv(colt*4 % 255,100,100),1,SPRITE_ORIGIN.BOTTOM_MIDDLE,true)
draw_flash_sprite_ext(global.spr_logo,OTHER.LOGO,clamp(floor(img_current/2),0,3),350,290,1,1,c_white,1,SPRITE_ORIGIN.CENTER_MIDDLE,true)
draw_flash_sprite_ext(global.spr_prsstart,(starting ? OTHER.PRESSED_START : OTHER.PRESS_START),(starting ? start_img_current : colt % 40),850,680,1,1,c_white,1,SPRITE_ORIGIN.CENTER_MIDDLE,false)