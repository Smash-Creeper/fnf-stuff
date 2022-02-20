song_pos = b_chart_loader.song_pos

var trigdefproc = 0
repeat(1){
	triggered[trigdefproc] = false
	trigdefproc += 1
}

active_arrows = 0
xmt = false
siner = 0

var proc = 0
repeat(4){
	ogay[proc,0] = battle.arrow[proc,0].y
	ogay[proc,1] = battle.arrow[proc,1].y
	proc += 1
}

funni_amount = 100
funni_dur = 20

funni_arrows = false
//alarm[2] = 70