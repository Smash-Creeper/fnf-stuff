///@arg x
function roundUp(){
	var X = argument[0]
	var RX = round(X)
	
	if(RX > X){
		return RX;
	}else
	if(RX < X){
		return (RX+1)
	}else{
		return X;
	}
}