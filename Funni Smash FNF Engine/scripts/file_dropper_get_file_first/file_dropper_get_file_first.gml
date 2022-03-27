/// @func file_dropper_get_files()
function file_dropper_get_file_first() {
	// Returns an array containing the list of file paths dragged into the program
	// window (the array may be empty if no files have been dragged)

	var f = external_call(global._ds_stuff_file_drop_get, 0);

	return f;


}
