/// @desc Game initialization

singleton();

// Randomize game seed for true randomness
randomize();
	
// Macros
#macro log show_debug_message
#macro GAME_WIDTH 512
#macro GAME_HEIGHT 288

// Global variables
global.window_scale = 2;
global.music_enabled = true;
global.retro_filter = true;
global.highscore = 0;
global.time_multiplier = 0.05; // This changes the speed of every obstacle in the game, kind of like in SUPERHOT

// Load score
load_score();

// Load settings
ini_open("save.kz");
global.window_scale = ini_read_real("settings", "window_scale", 2);
global.music_enabled = ini_read_real("settings", "music_enabled", true);
global.retro_filter = ini_read_real("settings", "retro_filter", true);
ini_close();

// Window size
window_set_size(GAME_WIDTH * global.window_scale, GAME_HEIGHT * global.window_scale);
display_set_gui_size(GAME_WIDTH, GAME_HEIGHT);
surface_resize(application_surface, GAME_WIDTH * global.window_scale, GAME_HEIGHT * global.window_scale);

// Various alarms for various actions
alarm[0] = 1; // Center window
alarm[1] = 30; // Go to splash screen
alarm[2] = 120; // Go to actual game & destroy object

// If all went smoothly, log this string in the console
log("Game started!");

audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_listener_position(room_width / 2, room_height / 2, 0);
audio_listener_orientation(0, 0, 1000, 0, -1, 0);