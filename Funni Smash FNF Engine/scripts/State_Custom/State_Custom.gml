// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State_Custom(){
	enum PLAYER_STATE{
		LEFT,
		DOWN,
		UP,
		RIGHT,
		LEFT_MISSED,
		DOWN_MISSED,
		UP_MISSED,
		RIGHT_MISSED,
		IDLE,
		GAME_OVER,
		GAME_OVER_CONTINUE,
		///Character Specific Animations
		BF_PEACE,
	}
	enum ARROW_STATE{
		LEFT = 0,
		DOWN = 1,
		UP = 2,
		RIGHT = 3,
		MIDDLE = 4,
		LEFT_PRESS = 5,
		DOWN_PRESS = 6,
		UP_PRESS = 7,
		RIGHT_PRESS = 8,
		MIDDLE_PRESS = 9,
		LEFT_CONFIRM = 10,
		DOWN_CONFIRM = 11,
		UP_CONFIRM = 12,
		RIGHT_CONFIRM = 13,
		MIDDLE_CONFIRM = 14,
	}
	enum ARROW_MUSTHIT{
		LEFT = 15,
		DOWN = 16,
		UP = 17,
		RIGHT = 18,
		MIDDLE = 19
	}
	enum ARROW_MUSTHOLD{
		LEFT = 20,
		DOWN = 21,
		UP = 22,
		RIGHT = 23,
		MIDDLE = 24,
		LEFT_END = 25,
		DOWN_END = 26,
		UP_END = 27,
		RIGHT_END = 28,
		MIDDLE_END = 29
	}
	enum PAIN_ARROW_MUSTHIT{
		LEFT = 30,
		DOWN = 31,
		UP = 32,
		RIGHT = 33
	}
	enum PAIN_ARROW_MUSTHOLD{
		LEFT = 34,
		DOWN = 35,
		UP = 36,
		RIGHT = 37,
		LEFT_END = 38,
		DOWN_END = 39,
		UP_END = 40,
		RIGHT_END = 41
	}
	enum OTHER{
		LOGO = 42,
		PRESS_START = 43,
		PRESSED_START = 44,
		STORY_MODE = 45,
		FREEPLAY = 46,
		OPTIONS = 47,
		DISCORD = 48,
		STORY_MODE_SELECTED = 49,
		FREEPLAY_SELECTED = 50,
		OPTIONS_SELECTED = 51,
		DISCORD_SELECTED = 52,
	}
	enum DIR{
		RIGHT = 0,
		UP = 90,
		LEFT = 180,
		DOWN = 270
	}
}