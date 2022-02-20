///@arg arrow
///@arg player
///@arg value[0-2]
function GetBattleArrowData(){
	var A0 = argument[0]
	var A1 = argument[1]
	var A2 = argument[2]
	var A = battle.arrow[A0,A1]
	switch(A2){
		case 0:
		return A.x;
		break;
		case 1:
		return A.y;
		break;
		case 2:
		return A.image_angle;
		break;
	}
}