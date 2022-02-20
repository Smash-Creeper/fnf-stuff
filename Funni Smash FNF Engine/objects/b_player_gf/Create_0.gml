FPS = 24
img_current = 0
img_timer = 0
char = CHARACTER.GF
state = PLAYER_STATE.IDLE
state_target = PLAYER_STATE.IDLE
state_default = PLAYER_STATE.IDLE
spr_facing = DIR.RIGHT
facing = (x >= room_width/2 ? DIR.LEFT : DIR.RIGHT)
d_sprite = global.spr_girlfriend

scroll_x = 0
scroll_y = 0
scroll_x_max = 0
scroll_y_max = 0
scroll_x_min = 0
scroll_y_min = 0

scfx =0
scfy =0

cpu = false

_p_slot = 0

ogx = x
ogy = y
scroll_x = 0
scroll_y = 0
scroll_factor = 0

camoff_x = 0
camoff_y = 0 - real(global.char_img_height[char][state][img_current]) / 2

icon_index = 0

show_debug_message("Im Player " + string(_p_slot) + ", and I exist at" + string(x) + "," + string(y))