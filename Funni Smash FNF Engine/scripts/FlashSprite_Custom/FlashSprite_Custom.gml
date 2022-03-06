// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FlashSprite_Custom(){
	var FP = "./assets/shared/NOTE_assets"
	
	global.arrow_sprites[0] = sprite_add(FP + ".png",0,false,false,0,0)
	
	var FP = "./assets/shared/pain_NOTE_assets"
	
	global.arrow_sprites[1] = sprite_add(FP + ".png",0,false,false,0,0)
	
	var FP = "./assets/shared/NOTE_assets"
	
	FlashImg_Define(FP,ARROW_STATE.LEFT,"arrowLEFT")
	FlashImg_Define(FP,ARROW_STATE.DOWN,"arrowDOWN")
	FlashImg_Define(FP,ARROW_STATE.UP,"arrowUP")
	FlashImg_Define(FP,ARROW_STATE.RIGHT,"arrowRIGHT")
	
	FlashImg_Define(FP,ARROW_STATE.LEFT_PRESS,"left press")
	FlashImg_Define(FP,ARROW_STATE.DOWN_PRESS,"down press")
	FlashImg_Define(FP,ARROW_STATE.UP_PRESS,"up press")
	FlashImg_Define(FP,ARROW_STATE.RIGHT_PRESS,"right press")
	
	FlashImg_Define(FP,ARROW_STATE.LEFT_CONFIRM,"left confirm")
	FlashImg_Define(FP,ARROW_STATE.DOWN_CONFIRM,"down confirm")
	FlashImg_Define(FP,ARROW_STATE.UP_CONFIRM,"up confirm")
	FlashImg_Define(FP,ARROW_STATE.RIGHT_CONFIRM,"right confirm")
	
	///Must Hit Arrows
	FlashImg_Define(FP,ARROW_MUSTHIT.LEFT,"purple")
	FlashImg_Define(FP,ARROW_MUSTHIT.DOWN,"blue")
	FlashImg_Define(FP,ARROW_MUSTHIT.UP,"green")
	FlashImg_Define(FP,ARROW_MUSTHIT.RIGHT,"red")
	///Must Hold Arrows
	FlashImg_Define(FP,ARROW_MUSTHOLD.LEFT,"purple hold piece")
	FlashImg_Define(FP,ARROW_MUSTHOLD.DOWN,"blue hold piece")
	FlashImg_Define(FP,ARROW_MUSTHOLD.UP,"green hold piece")
	FlashImg_Define(FP,ARROW_MUSTHOLD.RIGHT,"red hold piece")
	FlashImg_Define(FP,ARROW_MUSTHOLD.LEFT_END,"pruple end hold")
	FlashImg_Define(FP,ARROW_MUSTHOLD.DOWN_END,"blue hold end")
	FlashImg_Define(FP,ARROW_MUSTHOLD.UP_END,"green hold end")
	FlashImg_Define(FP,ARROW_MUSTHOLD.RIGHT_END,"red hold end")
	
//	var FP = "./assets/shared/pain_NOTE_assets"
					   
	///Must Hit Arrows 
	FlashImg_Define(FP,PAIN_ARROW_MUSTHIT.LEFT,"purple")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHIT.DOWN,"blue")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHIT.UP,"green")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHIT.RIGHT,"red")
	///Must Hold Arrows
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.LEFT,"purple hold piece")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.DOWN,"blue hold piece")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.UP,"green hold piece")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.RIGHT,"red hold piece")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.LEFT_END,"pruple end hold")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.DOWN_END,"blue hold end")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.UP_END,"green hold end")
	FlashImg_Define(FP,PAIN_ARROW_MUSTHOLD.RIGHT_END,"red hold end")
	
	
	
	///Characters
	var FP = "./assets/characters/bf/BOYFRIEND"
	global.spr_boyfriend = sprite_add(FP + ".png",0,false,false,0,0)
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.IDLE,"BF idle dance")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.LEFT,"BF NOTE LEFT")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.DOWN,"BF NOTE DOWN")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.UP,"BF NOTE UP")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.RIGHT,"BF NOTE RIGHT")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.LEFT_MISSED,"BF NOTE LEFT MISS")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.UP_MISSED,"BF NOTE UP MISS")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.DOWN_MISSED,"BF NOTE DOWN MISS")
	CharAnim_Define(FP,CHARACTER.BF,PLAYER_STATE.RIGHT_MISSED,"BF NOTE RIGHT MISS")
	var FP = "./assets/characters/dad/DADDY_DEAREST"
	global.spr_daddy_dearest = sprite_add(FP + ".png",0,false,false,0,0)
	CharAnim_Define(FP,CHARACTER.DAD,PLAYER_STATE.IDLE,"Dad idle dance")
	CharAnim_Define(FP,CHARACTER.DAD,PLAYER_STATE.LEFT,"Dad Sing Note LEFT")
	CharAnim_Define(FP,CHARACTER.DAD,PLAYER_STATE.DOWN,"Dad Sing Note DOWN")
	CharAnim_Define(FP,CHARACTER.DAD,PLAYER_STATE.UP,"Dad Sing Note UP")
	CharAnim_Define(FP,CHARACTER.DAD,PLAYER_STATE.RIGHT,"Dad Sing Note RIGHT")
	var FP = "./assets/characters/gf/GF_assets"
	global.spr_girlfriend = sprite_add(FP + ".png",0,false,false,0,0)
	CharAnim_Define(FP,CHARACTER.GF,PLAYER_STATE.IDLE,"GF Dancing Beat")
	CharAnim_Define(FP,CHARACTER.GF,PLAYER_STATE.LEFT,"GF left note")
	CharAnim_Define(FP,CHARACTER.GF,PLAYER_STATE.DOWN,"GF Down Note")
	CharAnim_Define(FP,CHARACTER.GF,PLAYER_STATE.UP,"GF Up Note")
	CharAnim_Define(FP,CHARACTER.GF,PLAYER_STATE.RIGHT,"GF Right Note")
	var FP = "./assets/characters/sensai/Sensai_Assets"
	global.spr_sensai = sprite_add(FP + ".png",0,false,false,0,0)
	CharAnim_Define(FP,CHARACTER.SENSAI,PLAYER_STATE.IDLE,"Sensai Idle")
	CharAnim_Define(FP,CHARACTER.SENSAI,PLAYER_STATE.LEFT,"Sensai Left")
	CharAnim_Define(FP,CHARACTER.SENSAI,PLAYER_STATE.DOWN,"Sensai Down")
	CharAnim_Define(FP,CHARACTER.SENSAI,PLAYER_STATE.UP,"Sensai Up")
	CharAnim_Define(FP,CHARACTER.SENSAI,PLAYER_STATE.RIGHT,"Sensai Right")
	
	///Stages
	var FP = "./assets/stages/stage/"
	global.stage_sprite[STAGE.STAGE][0] = sprite_add(FP + "stageback.png",0,false,false,0,0)
	global.stage_sprite[STAGE.STAGE][1] = sprite_add(FP + "stagefront.png",0,false,false,0,0)
//	global.stage_sprite[STAGE.STAGE][2] = sprite_add(FP + "stagelight.png",0,false,false,0,0)
	global.stage_sprite[STAGE.STAGE][2] = sprite_add(FP + "stagecurtains.png",0,false,false,0,0)
	
	///Other Sprites
	global.spr_event_note = sprite_add("./assets/shared/spr_event_placeholder.png",0,false,false,20,20)
	var FP = "./assets/shared/logoBumpin"
	global.spr_logo = sprite_add(FP + ".png",0,false,false,0,0)
	FlashImg_Define(FP,OTHER.LOGO,"logo bumpin")
	var FP = "./assets/shared/titleEnter"
	global.spr_prsstart = sprite_add(FP + ".png",0,false,false,0,0)
	FlashImg_Define(FP,OTHER.PRESS_START,"Press Enter to Begin")
	FlashImg_Define(FP,OTHER.PRESSED_START,"ENTER PRESSED")
	
	var FP = "./assets/shared/"
	global.spr_countdown[0] = sprite_add(FP + "ready.png",0,false,true,756/2,364/2)
	global.spr_countdown[1] = sprite_add(FP + "set.png",0,false,true,702/2,322/2)
	global.spr_countdown[2] = sprite_add(FP + "go.png",0,false,true,558/2,430/2)
	
	
}