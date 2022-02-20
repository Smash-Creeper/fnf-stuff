if(object_exists(asset_get_index(string(song_title) + "_modchart"))){
	mod_chart = instance_create_depth(0,0,0,asset_get_index(string(song_title) + "_modchart"))
	show_debug_message("It Exists!")
}