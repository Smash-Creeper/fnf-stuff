///@arg Section
///@arg Note
///@arg *Variable
function charter_get_note_data(){
	var SEC = argument[0]
	var NOTE = argument[1]
	var VAR = -1
	if(argument_count > 2){
		var VAR = argument[2]
	}
	var SV = variable_instance_get(self,"section_notes" + string(SEC))
	var N = array_get(SV,NOTE)
	var V = array_get(N,VAR)
	show_debug_message(string((VAR >= 0 ? V : N)))
	return (VAR >= 0 ? V : N);
}