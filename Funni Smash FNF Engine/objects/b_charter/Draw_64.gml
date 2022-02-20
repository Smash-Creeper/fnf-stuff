draw_text(0,100,string(note_count))
//draw_text(0,120,string(save_path))

var crochet = ((60 / bpm) * 1000)
var step_crochet = crochet / 4

draw_set_halign(fa_right)
draw_text(1280,100,"BPM: " + string(bpm))
draw_text(1280,120,"Song Position: " + string(song_pos))
draw_text(1280,140,"Song Position Relative: " + string(getStrumTime(bar_y + (grid_p1_height *c_section))))
draw_text(1280,160,"c_section: " + string(c_section))
draw_set_color(c_teal)
draw_text(1280,180,"Note Length: " + string(note_length))
draw_set_color(c_white)
draw_text(1280,200,"Song Title: " + string(song_title))
draw_text(1280,220,"Audio Inst: " + string(audio_get_name(audio_inst)))
draw_text(1280,240,"Audio Vocal: " + string(audio_get_name(audio_vocal)))
draw_text(1280,260,"t_section: " + string(t_section))
draw_text(1280,280,"mouse_y: " + string(dummymouse_y))
draw_text(1280,300,"mouse_songpos: " + string(getStrumTime(dummymouse_y + (grid_p1_height *c_section))))
draw_set_halign(fa_left)
/*
var PBUTX = 378
var PBUTY = 358
var PBUTWIDTH = 20
var PBUTHEIGHT = 20
var CONDITION = (((mouse_x >= PBUTX && mouse_x <= PBUTX + PBUTWIDTH) && (mouse_y >= PBUTY && mouse_y <= PBUTY + PBUTHEIGHT) && (mouse_check_button_pressed(mb_left) || mouse_check_button(mb_left))) ? true : false)
//draw_button_ext(PBUTX,PBUTY-camera.y,PBUTX+PBUTWIDTH,PBUTY-camera.y+PBUTHEIGHT,CONDITION,c_ltgray,c_dkgray,1,1)
draw_text_color(PBUTX + PBUTWIDTH/4,PBUTY-camera.y,"+",c_black,c_black,c_black,c_black,1)
var PBUTX = 418
var PBUTY = 358
var CONDITION = (((mouse_x >= PBUTX && mouse_x <= PBUTX + PBUTWIDTH) && (mouse_y >= PBUTY && mouse_y <= PBUTY + PBUTHEIGHT) && (mouse_check_button_pressed(mb_left) || mouse_check_button(mb_left))) ? true : false)
//draw_button_ext(PBUTX,PBUTY-camera.y,PBUTX+PBUTWIDTH,PBUTY-camera.y+PBUTHEIGHT,CONDITION,c_ltgray,c_dkgray,1,1)
draw_text_color(PBUTX + PBUTWIDTH/4,PBUTY-camera.y,"-",c_black,c_black,c_black,c_black,1)*/