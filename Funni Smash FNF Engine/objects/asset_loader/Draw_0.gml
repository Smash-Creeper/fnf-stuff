var minX = scroll_x_min == 0 ? 0 : scroll_x_min - ((camera.scale_x/camera.scale_y) - 1) * camera.width / (2 * (camera.scale_x/camera.scale_y));
var maxX = scroll_x_max == 0 ? 0 : scroll_x_max + ((camera.scale_x/camera.scale_y) - 1) * camera.width / (2 * (camera.scale_x/camera.scale_y));
var minY = scroll_y_min == 0 ? 0 : scroll_y_min - ((camera.scale_x/camera.scale_y) - 1) * camera.height / (2 * (camera.scale_x/camera.scale_y));
var maxY = scroll_y_max == 0 ? 0 : scroll_y_max + ((camera.scale_x/camera.scale_y) - 1) * camera.height / (2 * (camera.scale_x/camera.scale_y));

scroll_x = clamp(scroll_x,minX,maxX - camera.width)
scroll_y = clamp(scroll_x,minY,maxY - camera.height)

scfx = x - scroll_x - camera.x * scroll_factor
scfy = y - scroll_y - camera.y * scroll_factor
if(flash_sprite = false){
//	draw_self();
	draw_sprite_ext(sprite_index,image_index,scfx,scfy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}else if(flash_sprite = true){
	draw_flash_sprite_ext(sprite,sprite_title,image_index,scfx,scfy,image_xscale,image_yscale,image_blend,image_alpha,sprite_origin)
}