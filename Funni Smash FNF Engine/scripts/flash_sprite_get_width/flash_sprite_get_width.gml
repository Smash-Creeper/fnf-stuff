///@arg sprite_title
///@arg subimg
///@arg frame
function flash_sprite_get_width(){
	var TIT = argument[0]
	var SUB = argument[1]
	var FTF = false
	if(argument_count > 2){
		var FTF = argument[2];
	}
	var r = real(FTF ? (global.img_frameWidth[TIT][SUB]) : (global.img_width[TIT][SUB]))
//	show_debug_message(string(r))
	return r;
}