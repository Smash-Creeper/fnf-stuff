if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	MoveObject(self,"squarex",squarex,x,60)
	MoveObject(self,"squarey",squarey,y-100,60)
}
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	MoveObject(self,"squarex",squarex,x,60)
	MoveObject(self,"squarey",squarey,y+100,60)
}
if(InputGet(global.input_left) == INPUT_STATE.PRESSED){
	MoveObject(self,"squarex",squarex,x-100,60)
	MoveObject(self,"squarey",squarey,y,60)
}
if(InputGet(global.input_right) == INPUT_STATE.PRESSED){
	MoveObject(self,"squarex",squarex,x+100,60)
	MoveObject(self,"squarey",squarey,y,60)
}