with(b_event){
	if(tid = 0 && triggered = true){
		with(i_just_got_shot_modchart){
			funni_arrows = true
		}
	}
	if(tid = 1 && triggered = true){
		with(i_just_got_shot_modchart){
			funni_arrows = false
		}
	}
	if(tid = 2 && triggered = true){
		with(i_just_got_shot_modchart){
			MoveObject(global,"arrow_speed",3,7,5)
		}
	}
	if(tid = 3 && triggered = true){
		with(i_just_got_shot_modchart){
			MoveObject(battle.arrow[0,0],"x",battle.arrow[0,0].x,ogax[0,0],30)
			MoveObject(battle.arrow[1,0],"x",battle.arrow[1,0].x,ogax[1,0],30)
			MoveObject(battle.arrow[2,0],"x",battle.arrow[2,0].x,ogax[2,0],30)
			MoveObject(battle.arrow[3,0],"x",battle.arrow[3,0].x,ogax[3,0],30)
			MoveObject(battle.arrow[0,1],"x",battle.arrow[0,1].x,ogax[0,1],30)
			MoveObject(battle.arrow[1,1],"x",battle.arrow[1,1].x,ogax[1,1],30)
			MoveObject(battle.arrow[2,1],"x",battle.arrow[2,1].x,ogax[2,1],30)
			MoveObject(battle.arrow[3,1],"x",battle.arrow[3,1].x,ogax[3,1],30)
			//MoveObject(battle.arrow[4,0],"dy",-100,103,30)
			MoveObject(self,"dy",-100,103,30)
		}
	}
}
battle.arrow[4,0].y = dy
battle.arrow[4,1].y = dy

if(funni_arrows = true){
	var proc = 0
		repeat(5){
			switch(proc){
				case 0:
				case 3:
				var a = 1
				var yy = 103
				break;
				case 1:
				case 2:
				var a = 2
				var yy = 103
				break;
				case 4:
				var a = 3
				var yy = dy
				break;
			}
			battle.arrow[proc,0].y = yy + sin((siner + (a*10))/60) * 52
			proc += 1
		}
		var proc = 0
		repeat(5){
			switch(proc){
				case 0:
				case 3:
				var a = 1
				var yy = 103
				break;
				case 1:
				case 2:
				var a = 2
				var yy = 103
				break;
				case 4:
				var a = 3
				var yy = dy
				break;
			}
			battle.arrow[proc,1].y = yy + sin((siner + (a*10))/60) * 52
			proc += 1
		}
}
if(funni_arrows2){
	with(ui_arrow){
		if(arrow_state = 8){
			y += 2
		}
	}
}

siner += 1