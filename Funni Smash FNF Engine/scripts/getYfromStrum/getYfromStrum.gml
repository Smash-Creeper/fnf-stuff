///@arg strumTime
function getYfromStrum(){
	var strumTime = argument[0]
	
	/*
	var crochet = ((60 / b_charter.bpm) * 1000)
	var step_crochet = crochet / 4
	
	var result = remapToRange(strumTime, 0, 16 * step_crochet, b_charter.grid_y, b_charter.grid_y + grid_p1_height);
	
	return result;*/
	
	var crochet = ((global.bpm))
	var step_crochet = crochet // 4
	
	var result = strumTime * step_crochet
	
	return result;
	
}