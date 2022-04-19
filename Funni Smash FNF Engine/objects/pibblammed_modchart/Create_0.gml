siner = 0
funni_arrows = false
funni_arrows2 = false

ogax[0,0] = battle.arrow[0,0].x
ogax[1,0] = battle.arrow[1,0].x
ogax[2,0] = battle.arrow[2,0].x
ogax[3,0] = battle.arrow[3,0].x
//ogax[4,0] = battle.arrow[4,0].x

ogax[0,1] = battle.arrow[0,1].x
ogax[1,1] = battle.arrow[1,1].x
ogax[2,1] = battle.arrow[2,1].x
ogax[3,1] = battle.arrow[3,1].x
//ogax[4,1] = battle.arrow[4,1].x

battle.arrow[0,0].x = Arrow_GetInitPos(0,0,0)
battle.arrow[1,0].x = Arrow_GetInitPos(0,1,0)
battle.arrow[2,0].x = Arrow_GetInitPos(0,2,0)
battle.arrow[3,0].x = Arrow_GetInitPos(0,3,0)
//battle.arrow[4,0].x = Arrow_GetInitPos(0,4,0)

battle.arrow[0,1].x = Arrow_GetInitPos(1,0,0)
battle.arrow[1,1].x = Arrow_GetInitPos(1,1,0)
battle.arrow[2,1].x = Arrow_GetInitPos(1,2,0)
battle.arrow[3,1].x = Arrow_GetInitPos(1,3,0)
//battle.arrow[4,1].x = Arrow_GetInitPos(1,4,0)

//battle.arrow[4,0].y = -100
//battle.arrow[4,1].y = -100

dy = -100

//glitch = instance_create_depth(0,0,BATTLE_DEPTH.B_ARROW_P2-100,glitch_test)
alarm[0] = 3