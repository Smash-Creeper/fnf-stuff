loaded = false;
charfile = get_open_filename("*.char","");
path = string_delete(charfile,string_last_pos("\\",charfile),string_length(charfile) - string_last_pos("\\",charfile)+1) + "\\"
alarm[0] = 2