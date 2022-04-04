///@arg sprite
///@arg x/y
///@arg amount
function funni_scaler(){
var XYSCALE = argument[1];
if(XYSCALE = 0){
var SPR = sprite_get_width(argument[0]);
}else if(XYSCALE = 1){
var SPR = sprite_get_height(argument[0]);
}else if(XYSCALE = 2){
var SPR = argument[0]
}
var AMOUNT = argument[2];
var S1 = 1/SPR
var FINAL = S1*AMOUNT
return FINAL;
}