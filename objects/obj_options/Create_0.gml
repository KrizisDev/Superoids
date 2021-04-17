/// @desc Options initialization

button_height = 18;

button[0] = "Window scale: " + string(global.window_scale);
button[1] = "Music: " + (global.music_enabled == true ? "Enabled" : "Disabled");
button[2] = "Retro filter: " + (global.retro_filter == true ? "Enabled" : "Disabled");
button[3] = "\nReset saved scores";
buttons = array_length(button);

btn_index = 0;
last_selected = 0;