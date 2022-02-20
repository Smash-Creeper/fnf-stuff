// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveStep(){
	
	{/*
//	show_debug_message("MoveStep Script is Running!")
	if(variable_global_exists("movingobjs")){
//		show_debug_message("movingobjs global variable exists!")
		var proc = 0
		repeat(array_length(global.movingobjs)){
			var IF = array_get(array_get(global.movingobjs,proc),0)
			var VAR = array_get(array_get(global.movingobjs,proc),1)
			var TARGETVAR = array_get(array_get(global.movingobjs,proc),2)
			var MOVE_TYPE = array_get(array_get(global.movingobjs,proc),3)
			var SPDUR = array_get(array_get(global.movingobjs,proc),4)
			var DELAY = array_get(array_get(global.movingobjs,proc),5)
			var START = array_get(array_get(global.movingobjs,proc),6)
			var SS = array_get(array_get(global.movingobjs,proc),7)
			var ACTIVE = array_get(array_get(global.movingobjs,proc),8)
			if(START != undefined && SS = false){
				variable_instance_set(IF,VAR,START)
				array_set(global.movingobjs[proc],7,true)
				show_debug_message("Start variable has been set!")
			}
			if(instance_exists(IF) && DELAY = 0 && ACTIVE = true){
				if(MOVE_TYPE = MOVER_TYPE.DURATION){
					var RV = variable_instance_get(IF,VAR)
					var DV = TARGETVAR - RV
					RV += DV/SPDUR
					variable_instance_set(IF,VAR,RV)
					show_debug_message("(In Move Step) VAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),1)))
					show_debug_message("(In Move Step) TARGETVAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),2)))
					show_debug_message("(In Move Step) RV = "+string(RV))
					show_debug_message("(In Move Step) OG Var = "+string(variable_instance_get(IF,VAR)))
		//			show_debug_message("Moving Object," + string(IF) + "!")
				}else if(MOVE_TYPE = MOVER_TYPE.SPEED){
					var static SPDUR = array_get(array_get(global.movingobjs,proc),4)
					var RV = variable_instance_get(IF,VAR)
					var DV = TARGETVAR - RV
					RV += DV/(DV/SPDUR)
					variable_instance_set(IF,VAR,RV)
					show_debug_message("(In Move Step) VAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),1)))
					show_debug_message("(In Move Step) TARGETVAR = "+string(array_get(array_get(global.movingobjs,array_length(global.movingobjs)-1),2)))
					show_debug_message("(In Move Step) RV = "+string(RV))
		//			show_debug_message("Moving Object," + string(IF) + "!")
				}
				if(round(variable_instance_get(IF,VAR)) = round(TARGETVAR)){
					show_debug_message("Destination for " + object_get_name(IF) + "reached!");
					show_debug_message("Destination for " + object_get_name(string(IF)) + "reached!");
					show_debug_message("Active: " + string(ACTIVE))
					array_set(global.movingobjs[proc],8,false)
					array_delete(global.movingobjs,proc,1);
					break;
				}
			}else if(DELAY > 0){
				array_set(global.movingobjs[proc],5,DELAY-1)
			}
			proc += 1
		}
	}*/
	}
	///Start Here
	var proc = 0
	repeat(array_length(global.movingobjs)){
		var MOBJ = array_get(global.movingobjs,proc)
		var OBJ = array_get(MOBJ,0)
		var VAR = array_get(MOBJ,1)
		var START = array_get(MOBJ,2)
		var TARGET = array_get(MOBJ,3)
		var SPDUR = array_get(MOBJ,4)
		var DELAY = array_get(MOBJ,5)
		var STARTED = array_get(MOBJ,6)
		var CURRENTVAR = variable_instance_get(OBJ,VAR)
		if(DELAY <= 0){
			if(STARTED = false){
				variable_instance_set(OBJ,VAR,START)
				array_set(MOBJ,6,true)
			}
			if(instance_exists(OBJ) && OBJ != undefined && CURRENTVAR != undefined){
				var ADDME = (TARGET - START) / SPDUR
				CURRENTVAR += ADDME
				variable_instance_set(OBJ,VAR,CURRENTVAR)
			
				if(CURRENTVAR/SPDUR = TARGET/SPDUR){
					variable_instance_set(OBJ,VAR,TARGET)
					array_delete(global.movingobjs,proc,1)
					break;
				}
			}else{
				array_delete(global.movingobjs,proc,1)
				break;
			}
		}else{
			array_set(MOBJ,5,DELAY-1)
		}
		proc += 1
	}
	
}