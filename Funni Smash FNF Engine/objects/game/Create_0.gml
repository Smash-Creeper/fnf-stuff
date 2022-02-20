Inputs();
show_debug_overlay(true);
room_goto_next();
Character_Custom();
State_Custom();
FlashSprite_Custom();
Important_Variables();
MoveInit();
instance_create_depth(0,0,0,camera)
//instance_create_depth(0,0,0,_3dcam)

//global.chart_save_path = working_directory
//global.event_save_path = working_directory

Open_Chart_File()


/*
var ntsp = string_delete(save_path,string_length(save_path)-6,6)
var sp = string_last_pos("\\charts\\",file)
var ntfc = string_delete(file,sp,8)
var ntf = string_delete(file,string_length(file)-6,6)
var ntfc = string_insert("\\events\\",ntfc,sp)

global.chart_save_path = save_path
global.chart_file = (ntf != undefined ? ntf : "")
global.chart_event_file = (ntf != undefined ? ntf : "")
show_debug_message(string(ntf))
show_debug_message(ntf)
show_debug_message(string(ntf))
show_debug_message(ntf)*/