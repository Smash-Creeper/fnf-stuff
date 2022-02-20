var minX = scroll_x_min == 0 ? 0 : scroll_x_min - ((camera.scale_x/camera.scale_y) - 1) * camera.width / (2 * (camera.scale_x/camera.scale_y));
var maxX = scroll_x_max == 0 ? 0 : scroll_x_max + ((camera.scale_x/camera.scale_y) - 1) * camera.width / (2 * (camera.scale_x/camera.scale_y));
var minY = scroll_y_min == 0 ? 0 : scroll_y_min - ((camera.scale_x/camera.scale_y) - 1) * camera.height / (2 * (camera.scale_x/camera.scale_y));
var maxY = scroll_y_max == 0 ? 0 : scroll_y_max + ((camera.scale_x/camera.scale_y) - 1) * camera.height / (2 * (camera.scale_x/camera.scale_y));

scroll_x = clamp(scroll_x,minX,maxX - camera.width)
scroll_y = clamp(scroll_x,minY,maxY - camera.height)




draw_char_sprite_ext(d_sprite,char,state,img_current,scfx,scfy,(facing = DIR.RIGHT ? (spr_facing = DIR.RIGHT ? 1 : -1) : (spr_facing = DIR.LEFT ? 1 : -1)),1,image_blend,image_alpha,SPRITE_ORIGIN.BOTTOM_MIDDLE,true)

