/// @desc [placeholder]

ctrl_game.game_over = true;
room_goto(rm_menu);
play_audio(sfx_ship_shoot, 1, false, 0.01, false);

// Save the changes
ini_open("save.kz");
ini_write_real("settings", "window_scale", global.window_scale);
ini_write_real("settings", "music_enabled", global.music_enabled);
ini_write_real("settings", "retro_filter", global.retro_filter);
ini_close();