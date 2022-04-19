///@arg Animation_Type
///@arg Animation_Owner
///@arg Animation_Action
///@arg Animation_Title
function AnimationLoad(){
	var FILE = file_text_open_read("./"+ string(argument[1]) +".xml")
	var proc = 0
	var fproc = 0
	while(!file_text_eof(FILE)){
		var FS =file_text_read_string(FILE);
		//show_debug_message(string(string_substr_isolate(FS,"\"","0",1,false)))
		show_debug_message(string(argument[1]))
		if(string_substr_isolate(FS,"\"","0",1,false) == string(argument[3])){
			var pproc = 0
			repeat(4){
				//global.animation[? "Character"][? "BOYFRIEND"][? "idle"][| 0][| fproc][pproc] = string_substr_isolate(FS,"\"","\"",pproc + 2,true)
				global.animation[? argument[0]][? argument[1]][? argument[2]][| 0][| fproc][pproc] = string_substr_isolate(FS,"\"","\"",pproc + 2,true)
				pproc += 1
			}
			fproc += 1
		}
		file_text_readln(FILE)
		proc += 1
	}
	file_text_close(FILE)
}