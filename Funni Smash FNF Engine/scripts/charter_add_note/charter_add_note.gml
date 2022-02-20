///@arg X
///@arg songPos
///@arg dir
///@arg *length
///@arg *type
///@arg *section
function charter_add_note(){
	var X = argument[0]
	var POS = argument[1]
	var DIR = argument[2]
	var LENGTH = 0
	var TYPE = 0
	var SECTION = c_section
	if(argument_count > 3){
	var LENGTH = argument[3]
	}
	if(argument_count > 4){
	var TYPE = argument[4]
	}
	if(argument_count > 5){
	var SECTION = argument[5]
	}
	if(variable_instance_exists(self,"section_notes" + string(c_section)) = false){
		variable_instance_set(self,"section_notes" + string(c_section), array_create(0))
	}
	var note = [X,POS,DIR,LENGTH,TYPE]
	array_push(variable_instance_get(self,"section_notes" + string(c_section)),note)
	show_debug_message(string(variable_instance_get(self,"section_notes" + string(c_section))))
}