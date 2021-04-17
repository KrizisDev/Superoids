/// @desc Logo code

timer --; // Decrease timer

if(timer <= 0 && ctrl_game.game_started == false) {
	y_offset = lerp(y_offset, 0, 0.075); // Move the logo down a bit
	alpha = lerp(alpha, 1, 0.05); // Make the logo more opaque
}

if(ctrl_game.game_started == true) {
	ease_time ++;
	x_offset = ease("in-quad", ease_time, 0, room_width, 120);
}