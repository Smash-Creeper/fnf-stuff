loader = instance_create_depth(0,0,0,b_chart_loader)

player[0] = instance_create_depth(0,0,BATTLE_DEPTH.CHARACTER1,global.player[0])
player[1] = instance_create_depth(0,0,BATTLE_DEPTH.CHARACTER2,global.player[1])
gf = instance_create_depth(0,0,BATTLE_DEPTH.CHARACTER3,global.gf)
stage = instance_create_depth(0,0,0,b_stage)
stage.stage = global.loaderstage

player[0].x = array_get(stage.player_cords[0],0)
player[0].y = array_get(stage.player_cords[0],1)
player[0].ogx = array_get(stage.player_cords[0],0)
player[0].ogy = array_get(stage.player_cords[0],1)
player[0]._p_slot = 0
player[0].facing = DIR.LEFT
player[0].scroll_factor = stage.selfscroll_factor
player[0].cpu = global.botplay
//player[1] = instance_create_depth(array_get(stage.player_cords[1],0),array_get(stage.player_cords[1],1),BATTLE_DEPTH.CHARACTER2,global.player[1])
player[1].x = array_get(stage.player_cords[1],0)
player[1].y = array_get(stage.player_cords[1],1)
player[1].ogx = array_get(stage.player_cords[1],0)
player[1].ogy = array_get(stage.player_cords[1],1)
player[1]._p_slot = 1
player[1].facing = DIR.RIGHT
player[1].scroll_factor = stage.selfscroll_factor
player[1].cpu = true

gf.x = array_get(stage.gf_cords,0)
gf.y = array_get(stage.gf_cords,1)
gf.ogx = array_get(stage.gf_cords,0)
gf.ogy = array_get(stage.gf_cords,1)
gf.scroll_factor = stage.selfscroll_factor

load_uiarrows(global.ui_arrows)

/*
arrow[0,0] = instance_create_depth(50+56+640,103,BATTLE_DEPTH.UI_ARROW_P1,ui_arrow)
arrow[0,0].input = global.input_left
arrow[0,0].arrow_state = ARROW_STATE.LEFT
arrow[0,0].arrow_state_default = ARROW_STATE.LEFT
arrow[0,0].linked_player = battle.player[0]

arrow[1,0] = instance_create_depth(161+56+640,103,BATTLE_DEPTH.UI_ARROW_P1,ui_arrow)
arrow[1,0].input = global.input_down
arrow[1,0].arrow_state = ARROW_STATE.DOWN
arrow[1,0].arrow_state_default = ARROW_STATE.DOWN
arrow[1,0].linked_player = battle.player[0]

arrow[2,0] = instance_create_depth(273+56+640,103,BATTLE_DEPTH.UI_ARROW_P1,ui_arrow)
arrow[2,0].input = global.input_up
arrow[2,0].arrow_state = ARROW_STATE.UP
arrow[2,0].arrow_state_default = ARROW_STATE.UP
arrow[2,0].linked_player = battle.player[0]

arrow[3,0] = instance_create_depth(385+56+640,103,BATTLE_DEPTH.UI_ARROW_P1,ui_arrow)
arrow[3,0].input = global.input_right
arrow[3,0].arrow_state = ARROW_STATE.RIGHT
arrow[3,0].arrow_state_default = ARROW_STATE.RIGHT
arrow[3,0].linked_player = battle.player[0]
var cot = 0000
arrow[0,1] = instance_create_depth(50+56,103 + cot,BATTLE_DEPTH.UI_ARROW_P2,ui_arrow)
arrow[0,1].input = global.input_left
arrow[0,1].arrow_state = ARROW_STATE.LEFT
arrow[0,1].arrow_state_default = ARROW_STATE.LEFT
arrow[0,1].linked_player = battle.player[1]

arrow[1,1] = instance_create_depth(161+56,103 + cot,BATTLE_DEPTH.UI_ARROW_P2,ui_arrow)
arrow[1,1].input = global.input_down
arrow[1,1].arrow_state = ARROW_STATE.DOWN
arrow[1,1].arrow_state_default = ARROW_STATE.DOWN
arrow[1,1].linked_player = battle.player[1]

arrow[2,1] = instance_create_depth(273+56,103 + cot,BATTLE_DEPTH.UI_ARROW_P2,ui_arrow)
arrow[2,1].input = global.input_up
arrow[2,1].arrow_state = ARROW_STATE.UP
arrow[2,1].arrow_state_default = ARROW_STATE.UP
arrow[2,1].linked_player = battle.player[1]

arrow[3,1] = instance_create_depth(385+56,103 + cot,BATTLE_DEPTH.UI_ARROW_P2,ui_arrow)
arrow[3,1].input = global.input_right
arrow[3,1].arrow_state = ARROW_STATE.RIGHT
arrow[3,1].arrow_state_default = ARROW_STATE.RIGHT
arrow[3,1].linked_player = battle.player[1]*/