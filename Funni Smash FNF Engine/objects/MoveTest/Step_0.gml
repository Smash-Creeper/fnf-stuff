if(InputGet(global.input_up) == INPUT_STATE.PRESSED){
	MoveObject(global,"squarex",global.squarex,x,60)
	MoveObject(global,"squarey",global.squarey,y-100,60)
}
if(InputGet(global.input_down) == INPUT_STATE.PRESSED){
	MoveObject(global,"squarex",global.squarex,x,60)
	MoveObject(global,"squarey",global.squarey,y+100,60)
}
if(InputGet(global.input_left) == INPUT_STATE.PRESSED){
	MoveObject(global,"squarex",global.squarex,x-100,60)
	MoveObject(global,"squarey",global.squarey,y,60)
}
if(InputGet(global.input_right) == INPUT_STATE.PRESSED){
	MoveObject(global,"squarex",global.squarex,x+100,60)
	MoveObject(global,"squarey",global.squarey,y,60)
}