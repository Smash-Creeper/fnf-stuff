///@arg imgtitle
///@arg subimg
function flash_sprite_get_height(){
	var TIT = argument[0]
	var SUB = argument[1]
	return real(global.img_height[TIT][SUB]);
}