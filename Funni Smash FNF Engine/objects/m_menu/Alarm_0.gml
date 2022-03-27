switch(selected){
	case 0:
	global.menustate = MENU_STATE.STORY_MODE
	room_goto(room_storymode_menu)
	break;
	case 1:
	global.menustate = MENU_STATE.FREEPLAY
	room_goto(room_freeplay_menu)
	break;
}