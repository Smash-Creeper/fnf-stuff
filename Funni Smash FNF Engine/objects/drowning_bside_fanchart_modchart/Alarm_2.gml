var proc = 0
repeat(4){
	var A1 = battle.arrow[proc,0]
	var TX = Arrow_GetInitPos(xmt,proc,0)
	var SX = Arrow_GetInitPos((xmt = 0 ? 1 : 0),proc,0)
	MoveObject(A1,"x",TX,MOVER_TYPE.DURATION,30,10 * proc,SX)
	proc++
}
xmt = (xmt = 0 ? 1 : 0)
alarm[2] = 70