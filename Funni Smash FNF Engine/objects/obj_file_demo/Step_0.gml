var array = file_dropper_get_files();
file_dropper_flush();

if (array_length_1d(array) > 0) {
    files = array;
}