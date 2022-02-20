///@arg Instance
///@arg variable
function StopMoveObject(){
	var INST = argument[0]
	var VAR = argument[1]
	var proc = 0
	repeat(array_length(global.movingobjs)){
		var MOBJ = array_get(global.movingobjs,proc)
		var IF = array_get(MOBJ,0)
		var IVAR = array_get(MOBJ,1)
		if(IF = INST && IVAR = VAR){
			array_delete(global.movingobjs,proc,1)
			break;
		}
		proc += 1
	}
	
}