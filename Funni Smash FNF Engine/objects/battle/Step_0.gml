if(keyboard_check_pressed(ord("7"))){
	room_goto(room_charter)
}

if(keyboard_check_pressed(vk_enter) && !instance_exists(pause_menu)){
	pause = instance_create_depth(0,0,-1000,pause_menu)
}

if(global.hp <= global.hp_gameover){
	room_goto(room_gameover);
}

if(global.hp >= global.hpmax){
	global.hp = global.hpmax;
}