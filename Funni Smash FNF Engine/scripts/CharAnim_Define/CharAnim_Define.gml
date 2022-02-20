///@arg filepath
///@arg character
///@arg animation_name
///@arg inflash_name
function CharAnim_Define(){
	var FP = argument[0]
	var CHAR = argument[1]
	var AN = argument[2]
	var FN = argument[3]
	
	var proc = 0
	var fproc = 0
	var LT = 1
	var FILE = file_text_open_read(FP + ".xml")
	while(!file_text_eof(FILE)){
		LT += 1
//		l += 1
		//file_text_readln(FILE);
		
		var FS =file_text_read_string(FILE); 
		
		if(string_substr_isolate(FS,"\"","0",1,false) == string(FN)){
			global.char_img[CHAR][AN][fproc] = FP + ".png"
			global.char_img_line[CHAR][AN][fproc] = proc
			global.char_img_string[CHAR][AN][fproc] = FS
			global.char_img_x[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",2,true)
			global.char_img_y[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",3,true)
			global.char_img_width[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",4,true)
			global.char_img_height[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",5,true)
			global.char_img_frameX[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",6,true)
			global.char_img_frameY[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",7,true)
			global.char_img_frameWidth[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",8,true)
			global.char_img_frameHeight[CHAR][AN][fproc] = string_substr_isolate(global.char_img_string[CHAR][AN][fproc],"\"","\"",9,true)
			fproc += 1
		}
		file_text_readln(FILE);
		proc += 1
		
	}
	file_text_close(FILE);
}