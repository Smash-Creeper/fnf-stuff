///@description Duplicate Chart

if(variable_instance_exists(self,"section_notes" + string(c_section))){
	var NC = variable_instance_get(self,"section_notes" + string(c_section))
	var proc = 0
	repeat(array_length(NC)){
		var X = array_get(array_get(NC,proc),0)
		var POS = array_get(array_get(NC,proc),1)
		var D = array_get(array_get(NC,proc),2)
		var L = array_get(array_get(NC,proc),3)
		var T = array_get(array_get(NC,proc),4)
		if(X < 640){
			charter_add_note(X - grid_p2_x + grid_p1_x,POS,D,L,T)
		}else if(X > 640){
			charter_add_note(X - grid_p1_x + grid_p2_x,POS,D,L,T)
		}
		proc += 1
	}
}