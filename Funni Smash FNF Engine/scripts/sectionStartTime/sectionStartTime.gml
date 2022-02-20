function sectionStartTime(){
	var daBPM = b_charter.bpm
	var daPos = 0
	repeat(b_charter.c_section){
		daPos += 4 * (1000 * (60 / daBPM))
	}
	return daPos;
}