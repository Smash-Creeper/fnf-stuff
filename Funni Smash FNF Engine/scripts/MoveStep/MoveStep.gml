// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveStep(){
	
	
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
		var TYPE = array_get(MOBJ,6)
		var STARTED = array_get(MOBJ,7)
		var CURRENTVAR = variable_instance_get(OBJ,VAR)
		if(DELAY <= 0){
			if(STARTED = false){
				variable_instance_set(OBJ,VAR,START)
				array_set(MOBJ,7,true)
			}
			if(instance_exists(OBJ) && OBJ != undefined && CURRENTVAR != undefined){
				var ADDME = (TARGET - (TYPE = 0 ? START : CURRENTVAR)) / SPDUR
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