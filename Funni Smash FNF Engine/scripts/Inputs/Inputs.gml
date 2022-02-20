// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inputs(){
global.input_confirm = [ord("Z"),vk_enter,vk_space];

global.input_cancel = [ord("X"),vk_shift,vk_escape];

global.input_menu = [ord("C"),vk_control];

global.input_up = [vk_up, ord("J")];

global.input_down = [vk_down, ord("F")];

global.input_right = [vk_right, ord("K")];

global.input_left = [vk_left, ord("D")];

enum INPUT{
	CONFIRM,
	CANCEL,
	MENU
}
enum INPUT_STATE{
	PRESSED,
	HELD,
	RELEASED,
	NONE
}

}