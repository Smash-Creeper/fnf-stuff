// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Open_Chart_File(){
//	if(debug_mode){
	file = string(get_open_filename("*.chart",""))
	save_path = string_delete(file,string_last_pos("\\",file),string_length(file) - string_last_pos("\\",file)+1) + "\\"
	event_file = string(get_open_filename("*.event",""))
	event_save_path = string_delete(file,string_last_pos("\\",file),string_length(file) - string_last_pos("\\",file)+1) + "\\"
	show_debug_message(file)
	show_debug_message(save_path)
	show_debug_message(event_file)
	show_debug_message(event_save_path)
//}else{
//save_path = working_directory + "charts\\"
//}

global.chart_save_path = save_path
global.event_save_path = event_save_path
global.chart_file = file
global.event_file = event_file
}