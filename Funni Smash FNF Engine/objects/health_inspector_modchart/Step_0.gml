with(b_event){
	if(tid = 5 && triggered = true){
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,0],"y",103,window_get_height()-103,10)
			MoveObject(battle.arrow[proc,0],"image_angle",0,180,10)
			proc += 1
		}
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,1],"y",103,window_get_height()-103,10)
			MoveObject(battle.arrow[proc,1],"image_angle",0,180,10)
			proc += 1
		}
	}
	if(tid = 6 && triggered = true){
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,0],"y",window_get_height()-103,103,10)
			MoveObject(battle.arrow[proc,0],"image_angle",180,0,10)
			proc += 1
		}
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,1],"y",window_get_height()-103,103,10)
			MoveObject(battle.arrow[proc,1],"image_angle",180,0,10)
			proc += 1
		}
	}
}