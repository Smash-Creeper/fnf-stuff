/// @func file_dropper_get_files()
function file_dropper_get_files() {
	// Returns an array containing the list of file paths dragged into the program
	// window (the array may be empty if no files have been dragged)

	var n = external_call(global._ds_stuff_file_drop_count);
	var array = array_create(n);

	for (var i = 0; i < n; i++) {
	    array[i] = external_call(global._ds_stuff_file_drop_get, i);
	}

	return array;


}
