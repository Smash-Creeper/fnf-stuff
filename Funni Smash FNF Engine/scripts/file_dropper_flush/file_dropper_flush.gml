/// @function file_dropper_flush()
function file_dropper_flush() {
	// Clears the internal list of dragged filenames. You may want to append this
	// to the end of file_dropper_get_files() to save time.

	external_call(global._ds_stuff_file_drop_flush);


}
