///@arg instance
///@arg variable
///@arg start
///@arg target_var
///@arg speed/duration
///@arg *delay
///@arg *type
function MoveObject(){
	{/* Start Here
	var INST = argument[0]
	var VAR = argument[1]
	var TARGETVAR = argument[2]
	var MOVE_TYPE = argument[3]
	var SPDUR = argument[4]
	var START = undefined
	var DELAY = 0
	if(argument_count > 5){
		var DELAY = argument[5]
	}
	if(argument_count > 6){
		var START = argument[6]
	}
	
	var IN = instance_number(INST)
	
	var proc = 0
	if(instance_exists(INST)){
	//	show_debug_message(string(object_get_name(INST)))
		repeat(instance_number(INST)){
			var IF = instance_find(INST,proc)
		//	show_debug_message(string(object_get_name(IF)))
			if(instance_exists(IF) && variable_instance_exists(IF,VAR)){
				if(variable_global_exists("movingobjs")){
					array_push(global.movingobjs,[IF,VAR,TARGETVAR,MOVE_TYPE,SPDUR,DELAY,START,false,true,INST])
					show_debug_message("VAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),1)))
					show_debug_message("TARGETVAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),2)))
				}else{
					global.movingobjs = array_create(0)
					array_push(global.movingobjs,[IF,VAR,TARGETVAR,MOVE_TYPE,SPDUR,DELAY,START,false,true,INST])
					show_debug_message("VAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),1)))
					show_debug_message("TARGETVAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),2)))
				}
			}
			proc += 1
			
		}
	}*/
	}
	var A0 = argument[0]
	var A1 = argument[1]
	var A2 = argument[2]
	var A3 = argument[3]
	var A4 = argument[4]
	var A5 = 0
	var A6 = 0
	if(argument_count > 5){
		var A5 = argument[5]
	}
	if(argument_count > 6){
		var A6 = argument[6]
	}
	if(IsObjectMoving(A0,A1) = false){
		array_push(global.movingobjs,[A0,A1,A2,A3,A4,A5,A6,false])
		if(A5 <= 0){
			variable_instance_set(A0,string(A1),A2)
		}
	}else if(IsObjectMoving(A0,A1) = true){
		StopMoveObject(A0,A1)
		array_push(global.movingobjs,[A0,A1,A2,A3,A4,A5,A6,false])
		if(A5 <= 0){
			variable_instance_set(A0,string(A1),A2)
		}
	}
}