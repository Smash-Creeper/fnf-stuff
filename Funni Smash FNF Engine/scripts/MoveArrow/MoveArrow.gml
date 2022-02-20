///@arg arrownumber
///@arg player
///@arg newx
///@arg newy
///@arg newangle
///@arg type
///@arg duration
///@arg animid
function MoveArrow(){
	var AN = argument[0]
	var P = argument[1]
	
	if(argument_count > 7){
		var ID = argument[7]
	}else{
		var ID = active_arrows
	}
	
	movingarrow[ID] = battle.arrow[AN,P]
	movingarrow[ID].targetx = argument[2]
	movingarrow[ID].targety = argument[3]
	if(argument[5] = 1){
			movingarrow[ID].movedur = argument[6]
	}else{
			movingarrow[ID].movedur = undefined
	}
	active_arrows += 1
	if(debug_mode){
		show_debug_message("Animation for battle.arrow[" + string(AN) + "," + string(P)+"] created!")
	}
}