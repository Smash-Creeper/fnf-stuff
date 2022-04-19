function __bktgtlich_ui_init() {
	enum prop {
	    lineSpeed,
	    lineShift,
	    lineResolution,
	    lineVertShift,
	    lineDrift,
	    jumbleSpeed,
	    jumbleShift,
	    jumbleResolution,
	    jumbleness,
	    dispersion,
	    channelShift,
	    noiseLevel, 
	    shakiness,
	    rngSeed,
	    intensity
	};

	function __bktgtlich_setup_property(_id, _defaultValue, _name, _setter, _min, _max) {		
		attr[_id] = _defaultValue; 
		name[_id] = _name;
		valTo[_id] = _defaultValue; 
		uniformSetter[_id] = _setter;
		limit[_id, 0] = _min; 
		limit[_id, 1] = _max; 
	}

	__bktgtlich_setup_property(prop.intensity, 1, "intensity", bktglitch_set_intensity, 0, 5);
	__bktgtlich_setup_property(prop.lineShift, 0.004, "lineShift", bktglitch_set_line_shift, 0, .05);
	__bktgtlich_setup_property(prop.lineResolution, 1,  "lineResolution", bktglitch_set_line_resolution, 0, 3);
	__bktgtlich_setup_property(prop.lineVertShift, 0, "lineVertShift", bktglitch_set_line_vertical_shift, 0, 1);
	__bktgtlich_setup_property(prop.lineSpeed, 0.01, "lineSpeed", bktglitch_set_line_speed, 0, .5);
	__bktgtlich_setup_property(prop.jumbleness, 0.2, "jumbleness", bktglitch_set_jumbleness, 0, 1);
	__bktgtlich_setup_property(prop.jumbleResolution, .2, "jumbleResolution", bktglitch_set_jumble_resolution, 0, 1);
	__bktgtlich_setup_property(prop.jumbleShift, 0.15, "jumbleShift", bktglitch_set_jumble_shift, 0, 1);
	__bktgtlich_setup_property(prop.jumbleSpeed, 1.0, "jumbleSpeed", bktglitch_set_jumble_speed, 0, 25);
	__bktgtlich_setup_property(prop.channelShift, 0.004, "channelShift", bktglitch_set_channel_shift, 0, .05);
	__bktgtlich_setup_property(prop.dispersion, 0.0025, "dispersion", bktglitch_set_channel_dispersion, 0, .5);
	__bktgtlich_setup_property(prop.noiseLevel,  0.5, "noiseLevel", bktglitch_set_noise_level, 0, 1);
	__bktgtlich_setup_property(prop.lineDrift, 0.1,  "lineDrift", bktglitch_set_line_drift, 0, 1);
	__bktgtlich_setup_property(prop.shakiness, 0.5,  "shakiness", bktglitch_set_shakiness, 0, 10);
	__bktgtlich_setup_property(prop.rngSeed, 0,  "rngSeed", bktglitch_set_rng_seed, 0, 1);

	logoSeed = random(1);
	headerIntensity = 0;
	alarm[0] = random_range(10, 30);
	surGlitch = -1;
	global.holdingSlider = -1;
	
	function __bktgtlich_pass_uniforms_from_ui() {
		for (var i = 0; i < array_length(attr); i++){
		    script_execute(uniformSetter[i], attr[i]);
		}
	}

	function __bktGlitch_ui_draw() {
	
		function draw_slider(_caption, __x, __y, _min, _max, _id) {
			
			var _x = floor(__x);
			var _y = floor(__y);
			var _val = string_copy(string_format(attr[_id], 0, 4), 1, 6);

			var _cursorVal = attr[_id] / limit[_id, 1];
			var _cursorX = _x + _cursorVal * 150;

			draw_set_font(fntMain);

			draw_set_valign(fa_middle);
			gpu_set_blendmode(bm_add);
			draw_set_alpha(.5);
			draw_set_colour(c_purple);
			draw_set_halign(fa_right);
			draw_text(_x - 7, _y, string_hash_to_newline(_caption));
			draw_set_halign(fa_left);

			draw_set_font(fntValue);
			draw_text(_x + 158, _y, string_hash_to_newline(_val));
			draw_set_font(fntMain); 

			draw_line_width(_x - 2, _y - 2, _x + 150, _y - 2, 2);
			draw_line_width(_cursorX - 2, _y - 4 - 2, _cursorX - 2, _y + 4 - 2, 4);

			draw_set_alpha(.8);
			draw_set_colour(c_white);
			draw_set_halign(fa_right);
			draw_text(_x - 5, _y, string_hash_to_newline(_caption));

			draw_set_halign(fa_left);
			draw_set_font(fntValue);
			draw_text(_x + 160, _y, string_hash_to_newline(_val));
			draw_set_font(fntMain); 

			draw_line_width(_x, _y - 2, _x + 150, _y - 2, 2);
			draw_line_width(_cursorX, _y - 4 - 2, _cursorX, _y + 4 - 2, 4);

			if (mouse_check_button(mb_left)){
			    if (global.holdingSlider == -1){
			        if (mouse_x >= _x &&  mouse_x <= _x + 150 && mouse_y >= _y - 6 && mouse_y <= _y + 6){
			            global.holdingSlider = _id;           
			        }
			    }
    
			    if (global.holdingSlider == _id){
			        _cursorVal = (clamp(_x, mouse_x, _x + 150) - _x) / 150;
			        _cursorVal = min(1, _cursorVal);
			        valTo[_id] = limit[_id, 0] + (limit[_id, 1] - limit[_id, 0]) * _cursorVal;  
			        attr[_id] = valTo[_id];
			    }
			}

			draw_set_alpha(1);
			draw_set_valign(fa_top);
			draw_set_halign(fa_left);
			gpu_set_blendmode(bm_normal);
		}

		var _h = display_get_gui_height();
		var _w = display_get_gui_width();

		draw_sprite(sprOverlay, 0, 0, _h);

		for (var i = 0; i < array_length_1d(attr); i++){
		    draw_slider(name[i], 360 + floor(i / 5) * 340, _h - 70 + 15 * (i % 5), limit[i, 0], limit[i, 1], i);
		}

		if (!mouse_check_button(mb_left)){
		    global.holdingSlider = -1;
		}

		draw_sprite(sprTop, 0, 0, 0);
		draw_set_colour(c_black);
		draw_set_alpha(.5);
		draw_line_width(0, 18 + random_range(-1, 1), _w, 40 + random_range(-1, 1), 5); 
		draw_set_alpha(1);
		draw_set_colour(c_white);

		if (! surface_exists(surGlitch)){
		    surGlitch = surface_create(_w, _h);
		}

		surface_set_target(surGlitch);
		gpu_set_blendenable(0);
		draw_clear_alpha(c_white, 0);
		var _str = "bktGlitch 1.3";
		var _str2 = "blokatt.net | @blokatt | 2017-2021";
		draw_set_halign(fa_right);
		draw_set_alpha(.5);
		draw_set_colour(c_purple);
		draw_set_font(fntMain);
		draw_set_halign(fa_left);
		var _sW = 0;
		for (var i = 1; i <= string_length(_str2); i++){
		    draw_text_transformed(20 - 5 + _sW, floor(i / 8) + 1, string_char_at(_str2, i), 1, 1, 0);
		    _sW += string_width(string_char_at(_str2, i));
		}
		draw_set_halign(fa_right);
		draw_text_transformed(_w - 5 - 190, 2,  string_hash_to_newline("Press C to get current configuration.#Press R to randomise."), 1, 1, 0);
		draw_set_font(fntTop);
		draw_text_transformed(_w - 5 - 10 + random_range(1, -1), 5,  string_hash_to_newline(_str), 1, 1, 0);
		draw_set_alpha(1);
		draw_set_colour(c_white);
		draw_set_font(fntMain);
		draw_text_transformed(_w - 190, 2,  string_hash_to_newline("Press C to get current configuration.#Press R to randomise."), 1, 1, 0);
		draw_set_halign(fa_left);
		var _sW = 0;
		for (var i = 1; i <= string_length(_str2); i++){
		    draw_text_transformed(20 + _sW, floor(i / 8) + 1, string_char_at(_str2, i), 1, 1, 0);
		    _sW += string_width(string_char_at(_str2, i));
		}
		draw_set_halign(fa_right);
		draw_set_font(fntTop);
		draw_text_transformed(_w - 10, 5,  string_hash_to_newline(_str), 1, 1, 0);
		draw_set_alpha(1);
		draw_set_halign(fa_left);
		gpu_set_blendenable(1);
		surface_reset_target();

		gpu_set_blendmode(bm_add);

		shader_set(shdBktGlitch);

		bktglitch_set_intensity(2.433333);
		bktglitch_set_line_shift(0.006333);
		bktglitch_set_line_speed(0.210000);
		bktglitch_set_line_resolution(1.800000);
		bktglitch_set_line_drift(0.100000);
		bktglitch_set_line_vertical_shift(0.000000);
		bktglitch_set_noise_level(0);
		bktglitch_set_jumbleness(0.200000);
		bktglitch_set_jumble_speed(4.000000);
		bktglitch_set_jumble_resolution(30.000000);
		bktglitch_set_jumble_shift(0.150000);
		bktglitch_set_channel_shift(0.004000);
		bktglitch_set_channel_dispersion(0.002500);
		bktglitch_set_shakiness(0.800000);
		bktglitch_set_rng_seed(logoSeed);
		bktglitch_set_time(current_time * .05);
		bktglitch_set_resolution(_w, _h);

		headerIntensity = max(0, headerIntensity - .1);
		bktglitch_set_intensity(headerIntensity);
		draw_surface(surGlitch, 0, 0);
		shader_reset();

		gpu_set_blendmode(bm_normal);
	}

	function __bktgtlich_ui_step() {
		if (keyboard_check_pressed(ord("R"))){
		    for (var i = 0; i < array_length_1d(attr); i++){
		        if (i != prop.intensity){
		            valTo[i]  = random_range(limit[i, 0], limit[i, 1]); 
		        }
		    }   
		}

		for (var i = 0; i < array_length_1d(attr); i++){
		    attr[i] += (valTo[i] - attr[i]) * .25;
		}  

		if (keyboard_check_pressed(ord("C"))) {
		    var _str = @"
bktglitch_set_intensity(" + string_format(attr[prop.intensity], 0, 6)  + ");" + @"
bktglitch_set_line_shift(" + string_format(attr[prop.lineShift], 0, 6)  + ");" + @"
bktglitch_set_line_speed(" + string_format(attr[prop.lineSpeed], 0, 6)  + ");" + @"
bktglitch_set_line_resolution(" + string_format(attr[prop.lineResolution], 0, 6)  + ");" + @"
bktglitch_set_line_drift(" + string_format(attr[prop.lineDrift], 0, 6)  + ");" + @"
bktglitch_set_line_vertical_shift(" + string_format(attr[prop.lineVertShift], 0, 6)  + ");" + @"
bktglitch_set_noise_level(" + string_format(attr[prop.noiseLevel], 0, 6)  + ");" + @"
bktglitch_set_jumbleness(" + string_format(attr[prop.jumbleness], 0, 6)  + ");" + @"
bktglitch_set_jumble_speed(" + string_format(attr[prop.jumbleSpeed], 0, 6)  + ");" + @"
bktglitch_set_jumble_resolution(" + string_format(attr[prop.jumbleResolution], 0, 6)  + ");" + @"
bktglitch_set_jumble_shift(" + string_format(attr[prop.jumbleShift], 0, 6)  + ");" + @"
bktglitch_set_channel_shift(" + string_format(attr[prop.channelShift], 0, 6)  + ");" + @"
bktglitch_set_channel_dispersion(" + string_format(attr[prop.dispersion], 0, 6)  + ");" + @"
bktglitch_set_shakiness(" + string_format(attr[prop.shakiness], 0, 6)  + ");" + @"
bktglitch_set_rng_seed(" + string_format(attr[prop.rngSeed], 0, 6)  + @");
////// Alternatively:
bktglitch_config(" + string_format(attr[prop.lineShift], 0, 6) + ", " + string_format(attr[prop.lineSpeed], 0, 6) + ", " + string_format(attr[prop.lineResolution], 0, 6) + ", " + string_format(attr[prop.lineDrift], 0, 6) + ", " +  string_format(attr[prop.lineVertShift], 0, 6) + ", " + string_format(attr[prop.jumbleness], 0, 6) + ", " + string_format(attr[prop.jumbleSpeed], 0, 6) + ", " + string_format(attr[prop.jumbleResolution], 0, 6) + ", " + string_format(attr[prop.jumbleShift], 0, 6) + ", " + string_format(attr[prop.noiseLevel], 0, 6) + ", " + string_format(attr[prop.channelShift], 0, 6) + ", " + string_format(attr[prop.dispersion], 0, 6) + ", " + string_format(attr[prop.shakiness], 0, 6) + ", " + string_format(attr[prop.intensity], 0, 6) + ", " + string_format(attr[prop.rngSeed], 0, 6) +
			");";     

		    if (os_browser == browser_not_a_browser) {
		        clipboard_set_text(_str);
		        show_message("The current configuration has been copied into your clipboard.");
		    } else {
		        get_string("Copy and paste this into your code.", _str);
		    }
		}
	}

	function __bktgtlich_ui_alarm() {
		logoSeed = random(1);
		headerIntensity = random_range(.8, 1.2);
		alarm[0] = random_range(10, 130);
	}
}


