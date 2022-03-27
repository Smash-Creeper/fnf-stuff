xml = ""
png = ""
png_spr = undefined
path = ""//string_delete(xml,string_last_pos("\\",xml),string_length(xml) - string_last_pos("\\",xml)+1) + "\\"

current_animation = PLAYER_STATE.IDLE
current_frame = 0
anim_is_playing = false

current_origin = SPRITE_ORIGIN.CUSTOM
origin_x = 0
origin_y = 0

mouse_og_x = undefined
mouse_og_y = undefined

mouse_in_frame = false

char = CHARACTER.BF


///Work on character creator/offset adjuster