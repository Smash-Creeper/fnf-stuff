if(debug_mode){
	//Open_Chart_File();
}
bpm = global.bpm

song_title = global.chart_file//(global.chart_file != "" ? global.chart_file : "Event_test")

audio_inst = audio_play_sound(global.inst,0,false)
audio_vocal = audio_play_sound(global.vocal,0,false)
paused = true
grid_size = 40

song_pos = getStrumTime(-grid_size/2)

grid_p1_x = 660
grid_p2_x = 460
grid_y = 0//40

bar_x = grid_p2_x - 4
bar_y = 80

c_section = 0
p_section = 0

ui_arrow_count = 4
arrow_speed = 5
arrow_type = 0
arrow_type_range[0] = 12

_event_type = EVENT.CAMERA_SHIFT_P1
_event_value = 0

section_square_count = 16

grid_p2_width = ui_arrow_count * grid_size
grid_p1_width = ui_arrow_count * grid_size
grid_p2_height = section_square_count * grid_size
grid_p1_height = section_square_count * grid_size

mid_width = (grid_p1_x - (grid_p2_x + grid_p2_width))

note_count = 0
tet = 0
chart_is_loaded = false

event_color = c_aqua

note_length = 0


player[0] = global.player[0]
player[1] = global.player[1]
camera.target = noone
camera.y = -40

stage = STAGE.STAGE

//_3dcam.cam_enabled = true

funni_spin_siner = 0

dummymouse_y = 0

strumline = 0

t_section = 1

audio_pause_sound(audio_inst)
audio_pause_sound(audio_vocal)

inst_muted = false


//save_path = global.chart_save_path
//file = song_title//save_path + song_title + ".chart"
//event_file = song_title//save_path + song_title + ".chart"