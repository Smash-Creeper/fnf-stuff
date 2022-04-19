///@arg filepath
///@arg animation_name
///@arg inflash_name
function FlashImg_Define(){
	var FP = argument[0]
	var AN = argument[1]
	var FN = argument[2]
	
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
			global.img[AN,fproc] = FP + ".png"
			global.img_line[AN][fproc] = proc
			global.img_string[AN,fproc] = FS
			global.img_x[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",2,true)
			global.img_y[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",3,true)
			global.img_width[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",4,true)
			global.img_height[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",5,true)
			global.img_frameX[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",6,true)
			global.img_frameY[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",7,true)
			global.img_frameWidth[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",8,true)
			global.img_frameHeight[AN,fproc] = string_substr_isolate(global.img_string[AN,fproc],"\"","\"",9,true)
			fproc += 1
		}
		file_text_readln(FILE);
		proc += 1
		
	}
	file_text_close(FILE);
}