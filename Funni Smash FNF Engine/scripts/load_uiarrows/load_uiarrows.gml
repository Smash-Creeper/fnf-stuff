///@arg arrow_count
function load_uiarrows(){
	var a = argument[0];
	var a2i = function(){
		var a = argument[0]
		switch(a){
			case 0:
			return global.input_left;
			break;
			case 1:
			return global.input_down;
			break;
			case 2:
			return global.input_up;
			break;
			case 3:
			return global.input_right;
			break;
			case 4:
			return global.input_confirm;
			break;
		}
	}
	var ac = array_create(0);
	var awt = 0
	var wproc = 0
	repeat(a){
		var scalex = 1/100 * 70.06
		array_push(ac,global.img_width[15 + wproc][0]*scalex)
		awt += global.img_width[15 + wproc][0]*scalex
		wproc += 1
	}
	var proc = 0
	repeat(a){
		var p = 0
		//var aw = global.img_width[][0]
		var PRIORITYLIST = function(){
			var D = argument[0];
			if(global.ui_arrows % 2 = 1 && global.ui_arrows > 4){
				switch(D){
					case 0:
					return 0;
					break;
					case 1:
					return 1;
					break;
					case 2:
					return 3;
					break;
					case 3:
					return 4;
					break;
					case 4:
					return 2;
					break;
				}
			}else{
				return D;
			}
		}
		var sx = (awt)/2
		var xx = ((window_get_width()/2)+(window_get_width()/4) + array_get(ac,clamp(PRIORITYLIST(proc),0,3))/2) - sx + array_get(ac,clamp(PRIORITYLIST(proc),0,3)) * PRIORITYLIST(proc)
		arrow[proc,0] = instance_create_depth(xx,103,BATTLE_DEPTH.UI_ARROW_P1,ui_arrow)
		arrow[proc,0].input = a2i(proc)
		arrow[proc,0].arrow_state = ARROW_STATE.LEFT + proc
		arrow[proc,0].arrow_state_default = ARROW_STATE.LEFT + proc
		arrow[proc,0].linked_player = battle.player[0]
		var p = 1
		var sx = (awt)/2
		var xx = ((window_get_width()/2)-(window_get_width()/4) + array_get(ac,clamp(PRIORITYLIST(proc),0,3))/2) - sx + array_get(ac,clamp(PRIORITYLIST(proc),0,3)) * PRIORITYLIST(proc)
		arrow[proc,1] = instance_create_depth(xx,103,BATTLE_DEPTH.UI_ARROW_P1,ui_arrow)
		arrow[proc,1].input = a2i(proc)
		arrow[proc,1].arrow_state = ARROW_STATE.LEFT + proc
		arrow[proc,1].arrow_state_default = ARROW_STATE.LEFT + proc
		arrow[proc,1].linked_player = battle.player[1]
		proc += 1
	}
}