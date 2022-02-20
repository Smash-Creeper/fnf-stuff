var proc = 0
repeat(4){
	var tf = (xmt ? 1 : 0)
	var otf = (xmt ? 0 : 1)
	var tfn = (xmt ? 1 : -1)
	MoveObject(battle.arrow[proc,0],"x",Arrow_GetInitPos(tf,proc,0),Arrow_GetInitPos(otf,proc,0),60)
	MoveObject(battle.arrow[proc,1],"x",Arrow_GetInitPos(otf,proc,0),Arrow_GetInitPos(tf,proc,0),60)
//	MoveObject(battle.arrow[proc,0],"y",Arrow_GetInitPos(tf,proc,1)+(100*tfn),Arrow_GetInitPos(tf,proc,1)-(100*tfn),60,15*proc)
//	MoveObject(battle.arrow[proc,1],"y",Arrow_GetInitPos(otf,proc,1)-(100*tfn),Arrow_GetInitPos(otf,proc,1)+(100*tfn),60,15*proc)
	proc += 1
}
xmt = !xmt
alarm[0] = 60