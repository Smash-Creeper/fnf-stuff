with(b_event){
	if(tid = 0 && triggered = true){
		with(drowning_bside_fanchart_modchart){
			alarm[0] = 1
			funni_arrows = true
		}
	}
}

siner += 1

if(funni_arrows){
	var proc = 0
	repeat(4){
		battle.arrow[proc,0].y = Arrow_GetInitPos(0,proc,1) + sin((siner + (proc*15))/15) * 50
		battle.arrow[proc,1].y = Arrow_GetInitPos(0,proc,1) + sin((siner + (proc*15))/15) * -50
		proc +=1
	}
}


