draw_set_halign(fa_left)

draw_text(0,20,string(png));
draw_text(0,40,string(xml));
draw_text(0,60,string(path));
draw_text(0,80,string(origin_x));
draw_text(0,100,string(origin_y));
draw_text(0,120,"mouse_in_frame: " + string(mouse_in_frame));

draw_set_halign(fa_right)

draw_text(window_get_width(),0,"C: Set Character ID")
draw_text(window_get_width(),20,"S: Save Character")