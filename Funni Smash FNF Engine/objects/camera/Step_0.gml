//view_camera[0] = cam

if(!instance_exists(target) && !battle_cam){
camera_set_view_target(cam,noone)
camera_set_view_pos(cam,x,y)
camera_set_view_border(cam,width*(scale_x),height*(scale_y))
camera_set_view_size(cam,width*scale_x,height*scale_y)
camera_set_view_angle(cam,angle)
}else 
if(battle_cam){
	
camera_set_view_target(cam,noone)
camera_set_view_border(cam,width*(scale_x),height*(scale_y))
var tx = battle.player[battle_cam_target_player].scfx + battle.player[battle_cam_target_player].camoff_x + battle_cam_offset_x
var ty = battle.player[battle_cam_target_player].scfy + battle.player[battle_cam_target_player].camoff_y + battle_cam_offset_y
/*if(((round(x) != round(tx)) || (round(y) != round(ty))) && MovingObject(camera) = false){
	MoveObject(camera,"x",tx,0,battle_cam_duration)
	MoveObject(camera,"y",ty,0,battle_cam_duration)
}*/

var dx = tx - x
var dy = ty - y
if(x != tx){
x += (dx/battle_cam_duration)
}else{
x = tx
}
if(y != ty){
y += (dy/battle_cam_duration)
}else{
y = ty
}
scale_x = zoom
scale_y = zoom
/*
if(scaleiszoom){
	var dz = target_zoom - zoom
	if(zoom != target_zoom){
		zoom += dz/zoom_dur
	}
	
}

var da = target_angle - angle
if(angle != target_angle){
	angle += da/angle_dur
}
*/
camera_set_view_pos(cam,x-((window_get_width()/2) * scale_x),y-((window_get_height()/2) * scale_y))
camera_set_view_size(cam,width*scale_x,height*scale_y)
camera_set_view_angle(cam,angle)
}
else{
camera_set_view_target(cam,target)
camera_set_view_pos(cam,x,y)
camera_set_view_border(cam,width*(scale_x),height*(scale_y))
camera_set_view_size(cam,width*scale_x,height*scale_y)
camera_set_view_angle(cam,angle)
}

prev_scale_x = scale_x
prev_scale_y = scale_y

if(room = room_charter){
	StopMoveObject(camera,"x")
	StopMoveObject(camera,"y")
	x = 0
	y = -40
}