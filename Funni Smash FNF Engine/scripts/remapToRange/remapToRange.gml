///@arg value
///@arg start1
///@arg stop1
///@arg start2
///@arg stop2
function remapToRange(){
	var value = argument[0]
	var static start1 = argument[1]
	var static stop1 = argument[2]
	var static start2 = argument[3]
	var static stop2 = argument[4]
	
	var result = (start2 + (value - start1) * ((stop2 - start2) / (stop1 - start1)))
	
	return result;
	
}