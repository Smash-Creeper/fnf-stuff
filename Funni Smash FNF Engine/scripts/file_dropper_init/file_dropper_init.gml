/// @func file_dropper_init()
function file_dropper_init() {
	// Initializes the file dropper system. Call this in the Create event, Game Start,
	// or wherever you want. If you decide to store the DLL in another folder in Included
	// Files (or rename it, or something) you'll need to update the path to the DLL.

	// Note that you will need to disable the filesystem sandbox (Game Options > Windows)
	// to be able to actually access the files you drag into the window.

	var dll = "drago.dll";
	var calltype = dll_cdecl;

	global._ds_stuff_file_drop_count = external_define(dll, "file_drop_count", calltype, ty_real, 0);
	global._ds_stuff_file_drop_get = external_define(dll, "file_drop_get", calltype, ty_string, 1, ty_real);
	global._ds_stuff_file_drop_flush = external_define(dll, "file_drop_flush", calltype, ty_real, 0);

	external_call(external_define(dll, "init", calltype, ty_real, 2, ty_string, ty_real), window_handle(), false);


}
