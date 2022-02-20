var proc = 0
repeat(4){
	var A1 = battle.arrow[proc,0]
	var A2 = battle.arrow[proc,1]
	MoveObject(A1,"y",300,MOVER_TYPE.DURATION,30,10 * proc,100)
	MoveObject(A2,"y",300,MOVER_TYPE.DURATION,30,10 * proc,100)
	proc++
}
//alarm[0] = 30