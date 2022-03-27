var tx = battle.player[battle_cam_target_player].scfx - ((window_get_width()/2) * scale_x) + battle_cam_offset_x
var ty = battle.player[battle_cam_target_player].scfy - ((window_get_height()/2) * scale_y) + battle_cam_offset_y

MoveObject(self,"x",x,tx,battle_cam_duration)
MoveObject(self,"y",y,ty,battle_cam_duration)

///Just redo the entire Move System its broken im pretty sure