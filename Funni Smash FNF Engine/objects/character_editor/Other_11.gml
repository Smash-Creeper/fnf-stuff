var _buffer = buffer_load(charfile);
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
var _data = json_parse(_string);
//frames = _data.frames;
show_debug_message(string(frames));
/*
var FProc = 0;
repeat(array_length(frames)){
	variable_instance_set(self,"frame_" + string(FProc),array_get(frames,FProc))
	show_debug_message("frame_" + string(FProc) + ": " + string(variable_instance_get(self,"frame_" + string(FProc))))
	FProc += 1
}
*/

var FSProc = 0
frames[current_animation_num] = array_create(0);
for (var i = 0; variable_instance_exists(self,"frame_" + string(i)); i += 1){
	array_push(frames[current_animation_num],variable_instance_get(self,"frame_" + string(i)))
	show_debug_message("frame_" + string(i) + ": " + string(variable_instance_get(self,"frame_" + string(i))))
}

origin_x = array_get(variable_instance_get(self,"frame_" + string(current_frame)),0)
origin_y = array_get(variable_instance_get(self,"frame_" + string(current_frame)),1)

loaded = true;