///@arg filepath
///@arg character
///@arg animation_name
///@arg inflash_name
function Character_Animation_Define(){
	var FP = argument[0]
	var AN = argument[1]
	var FN = argument[2]
	
	
	
	var proc = 1
	var fproc = 0
	var FILE = file_text_open_read(FP)
	while(!file_text_eof(FILE)){
		var FS =file_text_read_string(FILE);
		
		if(string_substr_isolate(FS,"\"","0",1,false) == string(FN)){
			character_anim_line[AN][fproc] = proc
			fproc += 1
		}
		
		proc += 1
		file_text_readln(FILE);
	}
	file_text_close(FILE);
}