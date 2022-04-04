/// @desc Saving
var df = "Character"
ID = get_string("Character Name",string(df))
ID = (ID = undefined ? df : ID)
var FULLPATH = string(path) + string(ID)
event_user(0);
show_debug_message(string(FULLPATH));