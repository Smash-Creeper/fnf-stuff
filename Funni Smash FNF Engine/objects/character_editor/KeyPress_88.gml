xml = string(get_open_filename("*.xml",""))
path = string_delete(xml,string_last_pos("\\",xml),string_length(xml) - string_last_pos("\\",xml)+1) + "\\"