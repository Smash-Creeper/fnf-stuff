///@arg Arrow_MustHit
function ArwMustToDir(){
	var A = argument[0];
	var R = undefined
	switch(A){
		case ARROW_MUSTHIT.LEFT:
		case PAIN_ARROW_MUSTHIT.LEFT:
		case ARROW_STATE.LEFT:
		R = DIR.LEFT
		break;
		case ARROW_MUSTHIT.DOWN:
		case PAIN_ARROW_MUSTHIT.DOWN:
		case ARROW_STATE.DOWN:
		R = DIR.DOWN
		break;
		case ARROW_MUSTHIT.UP:
		case PAIN_ARROW_MUSTHIT.UP:
		case ARROW_STATE.UP:
		R = DIR.UP
		break;
		case ARROW_MUSTHIT.RIGHT:
		case PAIN_ARROW_MUSTHIT.RIGHT:
		case ARROW_STATE.RIGHT:
		R = DIR.RIGHT
		break;
	}
	return R;
}