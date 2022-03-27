//ui_arrow.image_angle = 45 * (left ? 1 : -1)

with(ui_arrow){
	MoveObject(self,"image_angle",image_angle,45 * (atrocity_modchart.left ? 1 : -1),19)
}

left = !left
alarm[0] = 19