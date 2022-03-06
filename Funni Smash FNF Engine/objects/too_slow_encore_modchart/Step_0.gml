with(b_event){
	if(tid = 0 && triggered = true){
		with(too_slow_encore_modchart){
			funni_arrows = true
		}
	}
	if(tid = 1 && triggered = true){
		with(too_slow_encore_modchart){
			funni_arrows = false
			funni_arrows2 = true
		}
	}
	if(tid = 2 && triggered = true){
		with(too_slow_encore_modchart){
			global.arrow_speed = 13
		}
	}
	if(tid = 3 && triggered = true){
		with(too_slow_encore_modchart){
			var proc = 0
			var l = 0
			repeat(8){
				MoveObject(battle.arrow[proc,l],"image_angle",0,90,60)
				proc += 1
				if(proc >= 4){
					l += 1
					proc = 0
				}
			}
		}
	}
	if(tid = 4 && triggered = true){
		with(too_slow_encore_modchart){
			with(ui_arrow){
				MoveObject(self,"y",y,103,10,0,1)
				MoveObject(self,"image_angle",image_angle,360,10)
			}
		}
	}
}

if(funni_arrows = true){
	var proc = 0
		repeat(4){
			battle.arrow[proc,0].y = 103 + sin((siner + (proc*10))/60) * 52
			proc += 1
		}
		var proc = 0
		repeat(4){
			battle.arrow[proc,1].y = 103 + sin((siner + (proc*10))/60) * 52
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