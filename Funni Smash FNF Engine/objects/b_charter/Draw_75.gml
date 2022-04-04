draw_set_font(f_debug)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
var STR = "Hotkeys because i was to lazy to make a menu \n(Ill add it in the next update): \n A: Change Stage \n B: Change BPM \n C: Copy Last Section \n E: Change Event Type \n H: Change Arrow Speed \n L: Load Chart \n N: Change Song Title \n O: Open New Chart \n P: Change Players \n S: Save Chart \n T: Change Arrow Type \n V: Change Note Length \n W: Change Event Value"
var SW = string_width(STR)
var SH = string_height(STR)
draw_sprite_ext(spr_pixel,0,0,0,SW,SH,0,c_black,0.8)
draw_text(0,0,STR)