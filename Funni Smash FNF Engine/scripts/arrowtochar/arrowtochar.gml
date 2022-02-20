///@arg ArrowState
function arrowtochar(){
	var A = argument[0]
	var C
	
	switch(A){
		case ARROW_STATE.LEFT:
		case ARROW_STATE.LEFT_PRESS:
		case ARROW_STATE.LEFT_CONFIRM:
		C = PLAYER_STATE.LEFT
		break;
		case ARROW_STATE.DOWN:
		case ARROW_STATE.DOWN_PRESS:
		case ARROW_STATE.DOWN_CONFIRM:
		C = PLAYER_STATE.DOWN
		break;
		case ARROW_STATE.UP:
		case ARROW_STATE.UP_PRESS:
		case ARROW_STATE.UP_CONFIRM:
		C = PLAYER_STATE.UP
		break;
		case ARROW_STATE.RIGHT:
		case ARROW_STATE.RIGHT_PRESS:
		case ARROW_STATE.RIGHT_CONFIRM:
		C = PLAYER_STATE.RIGHT
		break;
		case ARROW_MUSTHIT.LEFT:
		C = PLAYER_STATE.LEFT_MISSED
		break;
		case ARROW_MUSTHIT.DOWN:
		C = PLAYER_STATE.DOWN_MISSED
		break;
		case ARROW_MUSTHIT.UP:
		C = PLAYER_STATE.UP_MISSED
		break;
		case ARROW_MUSTHIT.RIGHT:
		C = PLAYER_STATE.RIGHT_MISSED
		break;
	}
	return C;
}