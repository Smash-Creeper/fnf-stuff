with(b_event){
	if(tid = 0 && triggered = true){
		with(momentium_modchart){
			alarm[0] = 1
		}
	}
	if(tid = 1 && triggered = true){
		with(momentium_modchart){
			StopMoveObject(camera,"zoom")
			alarm[0] = 0
		}
	}
}
    