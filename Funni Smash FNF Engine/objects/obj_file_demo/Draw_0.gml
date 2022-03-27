draw_set_font(FDefault);

if (array_length_1d(files) > 0) {
    for (var i = 0; i < array_length_1d(files); i++) {
        draw_text(64, 64 + 48 * i, files[i]);
    }
} else {
    draw_text(64, 64, "Drag some files into the window from Explorer!");
}