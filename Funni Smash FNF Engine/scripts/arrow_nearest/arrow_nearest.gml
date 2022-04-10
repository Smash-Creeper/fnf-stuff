///@arg x
///@arg y
///@arg dir
function arrow_nearest(){
	var A2D = function(){
		var A = argument[0];
		var R = undefined
		switch(A){
			case ARROW_MUSTHIT.LEFT:
			case PAIN_ARROW_MUSTHIT.LEFT:
			case ARROW_STATE.LEFT:
			R = DIR.LEFT
			break;
			case ARROW_MUSTHIT.DOWN:
			case PAIN_ARROW_MUSTHIT.DOWN:
			case ARROW_STATE.DOWN:
			R = DIR.DOWN
			break;
			case ARROW_MUSTHIT.UP:
			case PAIN_ARROW_MUSTHIT.UP:
			case ARROW_STATE.UP:
			R = DIR.UP
			break;
			case ARROW_MUSTHIT.RIGHT:
			case PAIN_ARROW_MUSTHIT.RIGHT:
			case ARROW_STATE.RIGHT:
			R = DIR.RIGHT
			break;
		}
		return R;
	}
	var X = argument[0]
	var Y = argument[1]
	var DIR = A2D(argument[2])
	var proc = 0
	var N = noone
	var PB = 10000
	repeat(instance_number(b_arrow)){
		var A = instance_find(b_arrow,proc)
		if(instance_exists(A) && A2D(A.arrow_type) = DIR && distance_to_object(A) <= PB){
			N = A;
			PB = distance_to_object(A);
		}
		proc += 1
	}
	return N;
}