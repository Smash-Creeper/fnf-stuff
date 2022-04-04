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
		LEFT_PRESS = 4,
		DOWN_PRESS = 5,
		UP_PRESS = 6,
		RIGHT_PRESS = 7,
		LEFT_CONFIRM = 8,
		DOWN_CONFIRM = 9,
		UP_CONFIRM = 10,
		RIGHT_CONFIRM = 11,
	}
	enum ARROW_MUSTHIT{
		LEFT = 12,
		DOWN = 13,
		UP = 14,
		RIGHT = 15
	}
	enum ARROW_MUSTHOLD{
		LEFT = 16,
		DOWN = 17,
		UP = 18,
		RIGHT = 19,
		LEFT_END = 20,
		DOWN_END = 21,
		UP_END = 22,
		RIGHT_END = 23
	}
	enum PAIN_ARROW_MUSTHIT{
		LEFT = 24,
		DOWN = 25,
		UP = 26,
		RIGHT = 27
	}
	enum PAIN_ARROW_MUSTHOLD{
		LEFT = 28,
		DOWN = 29,
		UP = 30,
		RIGHT = 31,
		LEFT_END = 32,
		DOWN_END = 33,
		UP_END = 34,
		RIGHT_END = 35
	}
	enum OTHER{
		LOGO = 36,
		PRESS_START = 37,
		PRESSED_START = 38,
		STORY_MODE = 39,
		FREEPLAY = 40,
		OPTIONS = 41,
		DISCORD = 42,
		STORY_MODE_SELECTED = 43,
		FREEPLAY_SELECTED = 44,
		OPTIONS_SELECTED = 45,
		DISCORD_SELECTED = 46,
	}
	enum DIR{
		RIGHT = 0,
		UP = 90,
		LEFT = 180,
		DOWN = 270
	}
}