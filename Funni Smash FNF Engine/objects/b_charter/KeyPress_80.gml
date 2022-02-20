var df1 = b_player
global.player[0] = get_string("Player Character: \n" + string(global.characters),object_get_name(b_player))
show_debug_message(global.player[0])
global.player[0] = (global.player[0] = undefined ? df1 : global.player[0])
show_debug_message(global.player[0])
var df2 = b_player_dad
global.player[1] = get_string("Opponent Character: \n" + string(global.characters),object_get_name(b_player_dad))
show_debug_message(global.player[1])
global.player[1] = (global.player[1] = undefined ? df2 : global.player[1])
show_debug_message(global.player[1])
