///@arg Note
function charter_remove_event(){
	var _event = argument[0]
	
	var EC = variable_instance_get(self,"section_events" + string(c_section))
	
	array_delete(EC,_event,1)
//	show_debug_message(string(NC))
}