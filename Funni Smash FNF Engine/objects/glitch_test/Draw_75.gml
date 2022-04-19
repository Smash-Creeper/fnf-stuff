bktglitch_activate(window_get_width(),window_get_height());


bktglitch_set_intensity(0.333333);
bktglitch_set_line_shift(0.003660);
bktglitch_set_line_speed(0.466248);
bktglitch_set_line_resolution(0.075758);
bktglitch_set_line_drift(0.678375);
bktglitch_set_line_vertical_shift(0.107348);
bktglitch_set_noise_level(0.985857);
bktglitch_set_jumbleness(0.760129);
bktglitch_set_jumble_speed(0.261995);
bktglitch_set_jumble_resolution(0.692006);
bktglitch_set_jumble_shift(0.187256);
bktglitch_set_channel_shift(0.001277);
bktglitch_set_channel_dispersion(0.498359);
bktglitch_set_shakiness(2.491241);
bktglitch_set_rng_seed(0.097092);
////// Alternatively:
bktglitch_config(0.003660, 0.466248, 0.075758, 0.678375, 0.107348, 0.760129, 0.261995, 0.692006, 0.187256, 0.985857, 0.001277, 0.498359, 2.491241, 0.333333, 0.097092);
surface_set_target(battle.ui_surface);
//draw_clear_alpha(c_white,0);
surface_reset_target();
draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());
draw_surface_stretched(battle.ui_surface, 0, 0, window_get_width(), window_get_height());
bktglitch_deactivate();