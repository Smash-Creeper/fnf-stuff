stage = global.loaderstage;

freecam = false;
stage_is_loaded = false;

camclampx = [undefined,undefined]
camclampy = [undefined,undefined]

load_stage(stage);

battle.player[0].linked_layer = relative_layer
battle.player[1].linked_layer = relative_layer