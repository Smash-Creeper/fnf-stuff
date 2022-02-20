///@arg x
///@arg y
///@arg xsize
///@arg ysize
///@arg xcount
///@arg ycount
///@arg oddcol
///@arg evencol
function draw_grid(){
	var xproc = 0
	repeat(argument[4]){
		var yproc = 0
		repeat(argument[5]){
		
			if(xproc % 2 = 1){
				draw_set_color((yproc % 2 = 1 ? argument[6] : argument[7]))
			}else
			if(xproc % 2 = 0){
				draw_set_color((yproc % 2 = 0 ? argument[6] : argument[7]))
			}
		
			draw_rectangle(argument[0]+(argument[2] * xproc),argument[1]+(argument[3] * yproc),argument[0]+argument[2] +(argument[2] * xproc),argument[1]+argument[3]+(argument[3] * yproc),false)
			yproc += 1
		}
		xproc += 1
	}
}