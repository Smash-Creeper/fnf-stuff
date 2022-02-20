///@arg number
function charter_last_copy_section(number){
	var N = argument[0]
	var S1 = variable_instance_get(self,"section_notes" + string(c_section - N))
	var CS = []//variable_instance_get(self,"section_notes" + string(c_section))
	
	var proc = 0
	var TS = []
	repeat(array_length(S1)){
		var X = charter_get_note_data(c_section - N,proc,0)
		var P = charter_get_note_data(c_section - N,proc,1) + getStrumTime((N) * grid_p1_height)
		var D = charter_get_note_data(c_section - N,proc,2)
		var L = charter_get_note_data(c_section - N,proc,3)
		var T = charter_get_note_data(c_section - N,proc,4)
		var TN = [X,P,D,L,T]
		array_push(CS,TN)
		proc += 1
	}
	variable_instance_set(self,"section_notes" + string(c_section),CS)
}