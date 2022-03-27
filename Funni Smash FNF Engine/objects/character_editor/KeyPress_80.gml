if(png_spr != undefined && sprite_exists(png_spr)){
	sprite_delete(png_spr)
}
png = string(get_open_filename("*.png",""))
png_spr = sprite_add(png,0,false,false,0,0)

path = string_delete(png,string_last_pos("\\",png),string_length(png) - string_last_pos("\\",png)+1) + "\\"