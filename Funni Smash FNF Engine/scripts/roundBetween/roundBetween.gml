///@arg v
///@arg n1
///@arg n2
function roundBetween(){
	var V = argument[0]
	var N1 = argument[1]
	var N2 = argument[2]
	
	var D1 = N1 - V
	var D2 = N2 - V
	
	var RV = 0
	
	if(D1 > D2){
		var RV = D2;
	}else
	if(D2 >= D1){
		var RV = D1;
	}
	return RV;
}