surfaces = ds_map_create();

var Rprop = ds_list_create();
ds_list_add(Rprop,0,0,make_color_rgb(0,0,0))
ds_map_add(surfaces,"red",Rprop)
var Gprop = ds_list_create();
ds_list_add(Gprop,0,0,make_color_rgb(0,255,0))
ds_map_add(surfaces,"green",Gprop)
var Bprop = ds_list_create();
ds_list_add(Bprop,0,0,make_color_rgb(0,0,255))
ds_map_add(surfaces,"blue",Bprop)
siner = 0