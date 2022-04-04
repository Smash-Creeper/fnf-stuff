draw_set_halign(fa_left)

draw_text(0,20,string(png));
draw_text(0,40,string(xml));
draw_text(0,60,string(path));
draw_text(0,80,string(origin_x));
draw_text(0,100,string(origin_y));
draw_text(0,120,"mouse_in_frame: " + string(mouse_in_frame));
draw_text(0,140,"current frame: " + string(current_frame));
draw_text(0,160,"current frame origins: " + string(variable_instance_get(self,"frame_" + string(current_frame))));
draw_text(0,180,"current_animation_num: " + string(current_animation_num))//string(variable_instance_get(self,"frame_" + string(current_frame))));

draw_set_halign(fa_right)

draw_text(window_get_width(),0,"C: Set Character ID")
draw_text(window_get_width(),20,"S: Save Character")
draw_set_halign(fa_left)
//for (var i = 0; variable_instance_exists(self,"frame_" + string(i)) = true; i += 1){
var i = 0
repeat(array_length(frames[current_animation_num])){
	var STR = "frame_" + string(i) + ": " + string(variable_instance_get(self,"frame_" + string(i)))
	draw_text(0,window_get_height()/2 + 20*i,STR)
	i += 1
}