///@arg Instance
///@arg Variable
function IsObjectMoving(){
	{/*	
	var INST = argument[0]
	var proc = 0
	var found = false
	if(variable_global_exists("movingobjs")){
		repeat(array_length(global.movingobjs)){
			var IF = array_get(array_get(global.movingobjs,proc),0)
			if(IF = INST){
				var found = true
				break;
			}
			show_debug_message("Object " +string(IF)+ " Is moving!")
			show_debug_message("Object " +string(IF)+ " Type is " + object_get_name(INST))
			show_debug_message((found = true ? "Found!" : "Not Found.."))
			proc += 1
		}
	}
	return found;
	*/}
	var INST = argument[0]
	var VAR = argument[1]
	var TF = false
	var proc = 0
	repeat(array_length(global.movingobjs)){
		var MOBJ = array_get(global.movingobjs,proc)
		var IF = array_get(MOBJ,0)
		var IVAR = array_get(MOBJ,1)
		if(IF = INST && IVAR = VAR){
			TF = true
			break;
		}
		proc += 1
	}
	return TF;
}