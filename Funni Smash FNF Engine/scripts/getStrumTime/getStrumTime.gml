///@arg yPos
function getStrumTime(){
	var YPOS = argument[0]
	/*
	var crochet = ((60 / b_charter.bpm) * 1000)
	var step_crochet = crochet / 4
	
	var result = remapToRange(YPOS, b_charter.grid_y, b_charter.grid_y + grid_p1_height, 0, 16 * step_crochet);
	*/
	
	var result = (YPOS) / global.bpm
	
	return result;
}