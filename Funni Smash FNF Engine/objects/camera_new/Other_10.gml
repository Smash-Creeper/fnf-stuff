width = window_get_width();
height = window_get_height();
angle = 0
scale_x = 1
scale_y = 1
prev_scale_x = 1
prev_scale_y = 1
x = 0
y = 0
target = noone
target_x = room_width/2
target_y = room_height/2

battle_cam = (room = room_battle ? true : false)
battle_cam_target_player = 0
battle_cam_duration = 30
battle_cam_trans_smooth = true
battle_cam_offset_x = 0
battle_cam_offset_y = 0

zoom = 1
target_zoom = 1
zoom_dur = 20
scaleiszoom = true

target_angle = 0
angle_dur = 20

if(room = room_battle){
	x = battle.player[battle_cam_target_player].scfx
	y = battle.player[battle_cam_target_player].scfy
}