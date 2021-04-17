/// @desc Initialization

singleton();

depth = -20;

// Miscellaneous
application_surface_draw_enable(false);
score_draw = 0;
ease_time = 0;
y_offset = -8;
gameover_alpha = 0;

// Game variables
game_started = false;
game_over = false;
game_score = 0;
game_level = 0;
game_lives = 3;
life_benchmark = 10000;
asteroid_count = 4;
danger = false;
music_timer = 0;
music_note = 0;

// Screen flash
flash_alpha = 0;