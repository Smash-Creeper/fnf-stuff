if(debug_mode){
	if(keyboard_check(ord("E"))){
		zfrom += 1

		if(zfrom = 0){
			zfrom += 1
		}
	}
	if(keyboard_check(ord("D"))){
		zfrom -= 1
	}
	if(keyboard_check(ord("W"))){
		yfrom += 1
	}
	if(keyboard_check(ord("S"))){
		yfrom -= 1
	}
	if(keyboard_check(ord("Q"))){
		xfrom += 1
	}
	if(keyboard_check(ord("A"))){
		xfrom -= 1
	}
	if(keyboard_check(ord("O"))){
		zto += 1
	}
	if(keyboard_check(ord("L"))){
		zto -= 1
	}
	if(keyboard_check(ord("I"))){
		yto += 1
	}
	if(keyboard_check(ord("K"))){
		yto -= 1
	}
	if(keyboard_check(ord("U"))){
		xto += 1
	}
	if(keyboard_check(ord("J"))){
		xto -= 1
	}

	if(keyboard_check_pressed(ord("R"))){
		xup += 1
	}
	if(keyboard_check_pressed(ord("T"))){
		yup += 1
	}
	if(keyboard_check_pressed(ord("Y"))){
		zup += 1
	}

	if(keyboard_check_pressed(ord("F"))){
		xup -= 1
	}
	if(keyboard_check_pressed(ord("G"))){
		yup -= 1
	}
	if(keyboard_check_pressed(ord("H"))){
		zup -= 1
	}

	if(keyboard_check_pressed(ord("1"))){
		xfrom = xfrom * -1
	}

	if(keyboard_check_pressed(ord("2"))){
		yfrom = yfrom * -1
	}

	if(keyboard_check_pressed(ord("3"))){
		zfrom = zfrom * -1
	}

	if(keyboard_check_pressed(ord("4"))){
		xup = xup * -1
	}

	if(keyboard_check_pressed(ord("5"))){
		yup = yup * -1
	}

	if(keyboard_check_pressed(ord("6"))){
		zup = zup * -1
	}

	if(keyboard_check_pressed(ord("7"))){
		xto = xto * -1
	}

	if(keyboard_check_pressed(ord("8"))){
		yto = yto * -1
	}

	if(keyboard_check_pressed(ord("9"))){
		zto = zto * -1
	}
	
	if(keyboard_check_pressed(vk_insert)){
		cam_enabled = !cam_enabled
	}
	
}

if(cam_enabled){/*
	fov = 41
	xfrom = room_width/2
	yfrom = room_height/2
	zfrom = -room_width
	xto = room_width/2
	yto = room_height/2
	zto = 0

	xup = 0
	yup = 1
	zup = 0*/
	view_enabled=true;
	view_camera[0]=camera._3dcamera;
	view_visible[0]=true;
	camera_apply(camera._3dcamera);
}else{
	view_enabled=true;
	view_camera[0]=camera.cam;
	view_visible[0]=true;
	camera_apply(camera.cam);
}