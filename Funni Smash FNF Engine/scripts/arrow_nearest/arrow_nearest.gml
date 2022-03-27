///@arg x
///@arg y
///@arg dir
function arrow_nearest(){
	var X = argument[0]
	var Y = argument[1]
	var DIR = ArwMustToDir(argument[2])
	var proc = 0
	var N = noone
	var PB = 1000000
	repeat(instance_number(b_arrow)){
		var A = instance_find(b_arrow,proc)
		if(instance_exists(A) && ArwMustToDir(A.arrow_type) = DIR && distance_to_object(A) <= PB){
			N = A;
			PB = distance_to_object(A);
		}
		proc += 1
	}
	if(N != noone || N != undefined && instance_exists(N)){
	//	show_debug_message("nearest note is at " + string(N.x) + "," + string(N.y) + "at POS: " + string(N.pos) + "DIR: " + string(ArwMustToDir(N.arrow_type)));
	}else{
	//	show_debug_message("nearest note is no where to be found");
	}
	return N;
}