///@arg Stage
function draw_fnf_stage_charter(){
	var S = argument[0]
	var proc = 0
	repeat(array_length(global.stage_sprite[S])){
		var w = sprite_get_width(global.stage_sprite[S][proc])
		var h = sprite_get_height(global.stage_sprite[S][proc])
		var sw = (1/w) * window_get_width()
		var sh = (1/h) * window_get_height()
		draw_sprite_ext(global.stage_sprite[S][proc],0,0,0+camera.y,sw,sh,0,c_white,1)
		proc += 1
	}
}