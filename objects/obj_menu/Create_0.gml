/// @desc Logo initialization

if(ctrl_game.game_over == false) {
	timer = 60; // Do thigns after this timer reaches 0
	x_offset = 0; // Offset things
	y_offset = -8; // Also offset things
	ease_time = 0; // Thing
	alpha = 0; // Logo's transparency
} else {
	ctrl_game.game_over = false;
	timer = -60;
	x_offset = 0;
	y_offset = 0;
	ease_time = 0;
	alpha = 1;
}
z_color = true; // Switch the letter Z's color between white and "existential red"
z_blink = 30; // The time between color switches in frames
alarm[0] = z_blink;