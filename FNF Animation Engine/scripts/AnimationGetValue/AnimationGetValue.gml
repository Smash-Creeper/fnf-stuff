///@arg Animation_Type
///@arg Animation_Owner
///@arg Animation_Action
///@arg Animation_Frame
///@arg Animation_Value
function AnimationGetValue(){
	return global.animation[? argument[0]][? argument[1]][? argument[2]][| 0][| argument[3]][argument[4]];
}