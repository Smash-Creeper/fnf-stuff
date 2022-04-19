// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FlashSprite_Init(){
	global.animation = ds_map_create();
	///Doesnt support multiple animations :[
	///Fix plz
	AnimationAddbyPrefix("Character","BOYFRIEND","idle","BF idle dance",24,false)
	AnimationAddbyPrefix("Character","BOYFRIEND","up","BF NOTE UP",24,false)
}