var FRAMEIDLE = array_create(0);

for (var i = 0; variable_instance_exists(self,"frame_" + string(i)); i += 1){
	array_push(FRAMEIDLE,variable_instance_get(self,"frame_" + string(i)))
}

var _data = {
	char_preset : char,
	img : png,
	frames_idle : frames[0],
	frames_left : frames[1],
	frames_down : frames[2],
	frames_up : frames[3],
	frames_right : frames[4],
}

/// Add seperate frames array for each animation

var _string = json_stringify(_data)
var _buffer = buffer_create(string_byte_length(_string) + 1,buffer_fixed,1)
buffer_write(_buffer,buffer_string,_string)
buffer_save(_buffer, path + string(ID) + ".char")
buffer_delete(_buffer)