/// @desc Saving
var df = "Character"
var ID = get_string("Character Name",string(df))
ID = (ID = undefined ? df : ID)
var FULLPATH = string(path) + string(ID)
show_debug_message(string(FULLPATH));