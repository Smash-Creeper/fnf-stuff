///@arg variable
///@arg fps
function FlashSprite_Run(){
	
	var VAR = argument[0]
	var FPS = argument[1]
//	var ANIM = argument[2]
	var NVAR = variable_instance_get(id,string(VAR))
	
	var F = roundDown(1/FPS * 60) * NVAR
	
//	array_length(ANIM)
	
	return F
	
}