///@arg *section
function charter_clear_chart(){
	if(argument_count > 0){
		var S = argument[0]
		var V = array_create(0)
			variable_instance_set(self,"section_notes" + string(S),V)
			variable_instance_set(self,"section_events" + string(S),V)
	}else{
		var proc = 0
		repeat(t_section){
			var V = array_create(0)
			variable_instance_set(self,"section_notes" + string(proc),V)
			variable_instance_set(self,"section_events" + string(proc),V)
			proc += 1
		}
	}
}