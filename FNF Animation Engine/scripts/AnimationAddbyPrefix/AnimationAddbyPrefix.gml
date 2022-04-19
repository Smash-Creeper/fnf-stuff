///@arg Animation_Type
///@arg Animation_Owner
///@arg Animation_Action
///@arg Animation_Title
///@arg FPS
///@arg idk
function AnimationAddbyPrefix(){
	/*var tframe = []
	var tsettings = ds_list_create();
	var tproperties = ds_list_create();
	var tanim = ds_map_create();
	var tchar = ds_map_create();
	var FILE = file_text_open_read("./bf/BOYFRIEND.xml")
	var proc = 0
	while(!file_text_eof(FILE)){
		var FS =file_text_read_string(FILE)
		show_debug_message(string(FS))
		if(string_substr_isolate(FS,"\"","0",1,false) == string("BF idle dance")){
			ds_list_add(tsettings,array_create(0))// |
			proc += 1
		}
		
		file_text_readln(FILE)
	}
	show_debug_message(string(proc))
	file_text_close(FILE);
	ds_list_add(tproperties,tsettings)// |
	ds_map_add(tanim,"idle",tproperties)// ?
	ds_map_add(tchar,"BOYFRIEND",tanim)// ?
	ds_map_add(global.animation,"Character",tchar) // ?
	//AnimationLoad(argument[0],argument[1],argument[2],argument[3]);
	AnimationLoad("Character","BOYFRIEND","idle","BF idle dance");*/
	var tframe = []
	var tsettings = ds_list_create();
	var tproperties = ds_list_create();
	var tanim = ds_map_create();
	var a0 = argument[0]
	var a1 = argument[1]
	if(ds_map_exists(ds_map_find_value(global.animation,a0),a1) = false){
		var tchar = global.animation[? a0][? a1];
	}else{
		var tchar = ds_map_create();
	}
	var FILE = file_text_open_read("./"+ string(argument[1]) +".xml")
	var proc = 0
	while(!file_text_eof(FILE)){
		var FS =file_text_read_string(FILE)
		//show_debug_message(string(FS))
		if(string_substr_isolate(FS,"\"","0",1,false) == string(argument[3])){
			ds_list_add(tsettings,array_create(0))// |
			proc += 1
		}
		
		file_text_readln(FILE)
	}
	//show_debug_message(string(proc))
	file_text_close(FILE);
	ds_list_add(tproperties,tsettings)// |
	ds_map_add(tanim,argument[2],tproperties)// ?
	ds_map_add(tchar,argument[1],tanim)// ?
	ds_map_add(global.animation,argument[0],tchar) // ?
	//AnimationLoad(argument[0],argument[1],argument[2],argument[3]);
	AnimationLoad(argument[0],argument[1],argument[2],argument[3]);
}