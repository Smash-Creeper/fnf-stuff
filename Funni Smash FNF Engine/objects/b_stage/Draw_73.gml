if(debug_mode){
	draw_text(battle.player[0].scfx,battle.player[0].scfy,string(battle.player[0].scfx) + " , " + string(battle.player[0].scfy))
	draw_text(battle.player[1].scfx,battle.player[1].scfy,string(battle.player[1].scfx) + " , " + string(battle.player[1].scfy))
	draw_text(battle.player[0].scfx,battle.player[0].scfy+20,string(battle.player[0].ogx) + " , " + string(battle.player[0].ogy))
	draw_text(battle.player[1].scfx,battle.player[1].scfy+20,string(battle.player[1].ogx) + " , " + string(battle.player[1].ogy))
}