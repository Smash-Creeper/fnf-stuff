/*var minX = scroll_x_min == 0 ? 0 : scroll_x_min - (camera.zoom - 1) * camera.width / (2 * camera.zoom);
var maxX = scroll_x_max == 0 ? 0 : scroll_x_max + (camera.zoom - 1) * camera.width / (2 * camera.zoom);
var minY = scroll_y_min == 0 ? 0 : scroll_y_min - (camera.zoom - 1) * camera.height / (2 * camera.zoom);
var maxY = scroll_y_max == 0 ? 0 : scroll_y_max + (camera.zoom - 1) * camera.height / (2 * camera.zoom);

scroll_x = clamp(scroll_x,minX,maxX - camera.width+(window_get_width()/2))
scroll_y = clamp(scroll_y,minY,maxY - camera.height+(window_get_height()/2))*/

scfx = lerp(x,camera.x,scroll_factor)//(x - (scroll_x - (camera.x+((window_get_width()/2))) * scroll_factor))
scfy = lerp(y,camera.y,scroll_factor)//(y - (scroll_y - (camera.y+((window_get_height()/2))) * scroll_factor))

if(flash_sprite = false){
//	draw_self();
	draw_sprite_ext(sprite_index,image_index,scfx-sprite_get_width(sprite_index)/2,scfy-sprite_get_height(sprite_index)/2,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}else if(flash_sprite = true){
	draw_flash_sprite_ext(sprite,sprite_title,image_index,scfx- sprite_get_width(sprite_index)/2,scfy- sprite_get_height(sprite_index)/2,image_xscale,image_yscale,image_blend,image_alpha,sprite_origin)
}

draw_text(scfx,scfy,string(scfx))
draw_text(scfx,scfy+30,string(scfy))