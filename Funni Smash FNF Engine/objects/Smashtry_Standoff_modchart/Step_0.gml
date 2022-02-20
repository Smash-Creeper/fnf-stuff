with(b_event){
	if(tid = 0 && triggered = true){
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,0],"x",Arrow_GetInitPos(0,proc,0)-320,Arrow_GetInitPos(0,proc,0),60)
			MoveObject(battle.arrow[proc,0],"image_angle",0,360,60)
			proc += 1
		}
	}
	if(tid = 1 && triggered = true){
		///Add Start Features to this script, Thanks!
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,0],"x",Arrow_GetInitPos(0,proc,0),Arrow_GetInitPos(0,proc,0) - 320,60)
			MoveObject(battle.arrow[proc,0],"image_angle",0,-360,60)
			proc += 1
		}
	}
	if(tid = 2 && triggered = true){
		///Add Start Features to this script, Thanks!
		var proc = 0
		repeat(4){
			MoveObject(battle.arrow[proc,0],"x",Arrow_GetInitPos(0,proc,0),Arrow_GetInitPos(1,proc,0),60)
			MoveObject(battle.arrow[proc,0],"image_angle",0,-360,60)
			MoveObject(battle.arrow[proc,1],"x",Arrow_GetInitPos(1,proc,0),Arrow_GetInitPos(0,proc,0),60)
			MoveObject(battle.arrow[proc,1],"image_angle",0,-360,60)
			proc += 1
		}
	}
	if(tid = 3 && triggered = true){
		MoveObject(camera,"image_angle",0,180,60)
	}
	if(tid = 4 && triggered = true){
		MoveObject(camera,"zoom",1.1,2,20)
	}
	if(tid = 5 && triggered = true){
		MoveObject(camera,"zoom",2,1.1,180)
	}
}


