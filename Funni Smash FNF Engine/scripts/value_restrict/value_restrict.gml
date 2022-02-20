///@arg x
///@arg min
///@arg max
///@arg mode
function value_restrict(){
	var X = argument[0]
	var MIN = argument[1]
	var MAX = argument[2]
	var MODE = argument[3]
	
	if(MODE = 0){
		if(X < MIN){
			X = MIN
		}else if(X > MAX){
			X = MAX
		}
	}else if(MODE = 1){
		if(X < MIN){
			X = MAX
		}else if(X > MAX){
			X = MIN
		}
	}
	
	return X;
	
}