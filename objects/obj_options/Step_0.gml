/// @desc [placeholder]

var btn_move = input_check(vk_down, 0) - input_check(vk_up, 0);
btn_index += btn_move;

if(btn_index < 0) {
	btn_index = buttons - 1;
}

if(btn_index > buttons - 1) {
	btn_index = 0;
}

if(btn_index != last_selected) {
	play_audio(sfx_select, 1, false, 0.01, false);
}
last_selected = btn_index;

if(input_check(ord("Z"), 0)) {
	play_audio(sfx_ship_shoot, 1, false, 0.01, false);
	switch(btn_index) {
		case 0: // Window scale
			global.window_scale ++;
			if(global.window_scale == 5) {
				global.window_scale = 1;
			}
			window_set_size(GAME_WIDTH * global.window_scale, GAME_HEIGHT * global.window_scale);
			surface_resize(application_surface, GAME_WIDTH * global.window_scale, GAME_HEIGHT * global.window_scale);
			alarm[0] = 1;
			button[0] = "Window scale: " + string(global.window_scale);
		break;
		
		case 1: // Music
			global.music_enabled = !global.music_enabled;
			button[1] = "Music: " + (global.music_enabled == true ? "Enabled" : "Disabled");
		break;
		
		case 2: // Retro filter
			global.retro_filter = !global.retro_filter;
			button[2] = "Retro filter: " + (global.retro_filter == true ? "Enabled" : "Disabled");
		break;
		
		case 3: // Reset saved scores
			play_audio(sfx_reset_score, 1, false, 0, false);
			play_audio(sfx_asteroid_boom, 1, false, 0, false);
			flash_screen();
			ini_open("save.kz");
			if(ini_section_exists("data") == true) {
				ini_section_delete("data");
			}
			ini_close();
			global.highscore = 0;
		break;
	}
}