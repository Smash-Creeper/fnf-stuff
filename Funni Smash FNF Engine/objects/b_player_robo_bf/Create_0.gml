event_inherited();
FPS = 4
img_current = 0
img_timer = 0
char = CHARACTER.ROBO_BF
state = PLAYER_STATE.IDLE
state_target = PLAYER_STATE.IDLE
state_default = PLAYER_STATE.IDLE
spr_facing = DIR.RIGHT
facing = (x >= room_width/2 ? DIR.LEFT : DIR.RIGHT)
d_sprite = global.spr_robo_boyfriend

cpu = false

_p_slot = 0

icon_index = 1

show_debug_message("Im Player " + string(_p_slot) + ", and I exist at" + string(x) + "," + string(y))