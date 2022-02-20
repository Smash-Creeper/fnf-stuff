///@arg sprite
///@arg subimg
///@arg x
///@arg y
///@arg xscale
///@arg yscale
///@arg rot
///@arg col
///@arg alpha
///@arg *dropdistance
///@arg *dropdir
///@arg *dropcolor
///@arg *dropalpha
function draw_sprite_ext_backdrop(){
	var A1 = argument[0]
	var A2 = argument[1]
	var A3 = argument[2]
	var A4 = argument[3]
	var A5 = argument[4]
	var A6 = argument[5]
	var A7 = argument[6]
	var A8 = argument[7]
	var A9 = argument[8]
	var A10 = 2
	var A11 = -45
	var A12 = A8
	var A13 = A9 - 0.5
	
	if(argument_count > 9){
		var A10 = argument[9]
	}
	if(argument_count > 10){
		var A11 = argument[10]
	}
	if(argument_count > 11){
		var A12 = argument[11]
	}
	if(argument_count > 12){
		var A13 = argument[12]
	}
	
	draw_sprite_ext(A1,A2,A3+lengthdir_x(A10,A11),A4+lengthdir_y(A10,A11),A5,A6,A7,A12,A13)
	draw_sprite_ext(A1,A2,A3,A4,A5,A6,A7,A8,A9)
}