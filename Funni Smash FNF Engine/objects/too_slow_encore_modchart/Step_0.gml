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
			switch(arrow_state_default){
				case ARROW_STATE.LEFT:
				with(ui_arrow){
				ui_arrow.x -= 2
				}
				break;
				case ARROW_STATE.DOWN:
				with(ui_arrow){
				ui_arrow.y += 2
				}
				break;
				case ARROW_STATE.UP:
				with(ui_arrow){
				ui_arrow.y -= 2
				}
				break;
				case ARROW_STATE.RIGHT:
				with(ui_arrow){
				ui_arrow.x += 2
				}
				break;
			}
		}
	}
}

siner += 1