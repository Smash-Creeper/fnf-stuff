//draw_text(window_get_width()/2,window_get_height()/2,global.animation[? "Character"][? "BOYFRIEND"][? "idle"][| 0][| 2][0]);
var _frame = delta_time % 13
var _left = AnimationGetValue("Character","BOYFRIEND","up",_frame,0)
var _up = AnimationGetValue("Character","BOYFRIEND","up",_frame,1)
var _width = AnimationGetValue("Character","BOYFRIEND","up",_frame,2)
var _height = AnimationGetValue("Character","BOYFRIEND","up",_frame,3)
draw_sprite_general(spr,0,_left,_up,_width,_height,x,y,1,1,0,c_white,c_white,c_white,c_white,1)