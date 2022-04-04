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