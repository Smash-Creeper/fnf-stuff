///@arg Note
function charter_remove_note(){
	var _note = argument[0]
	
	var NC = variable_instance_get(self,"section_notes" + string(c_section))
	
	array_delete(NC,_note,1)
//	show_debug_message(string(NC))
}