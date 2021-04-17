/// @desc Game controller code

// Lerp some stuff n shit
score_draw = lerp(score_draw, game_score, 0.2);
flash_alpha = lerp(flash_alpha, 0, 0.2);

// If the player doesn't exist, slow things down
if(instance_exists(obj_ship) == false) {
	global.time_multiplier = lerp(global.time_multiplier, 0.05, 0.05);
}

// Show "Game Over"
if(game_over == true) {
	y_offset = lerp(y_offset, 0, 0.05);
	gameover_alpha = lerp(gameover_alpha, 1, 0.05);
}

if(room == rm_game && game_lives > 0) {
	if(instance_exists(obj_asteroid) == true || instance_exists(obj_saucer) == true) {
		danger = true;
	} else {
		if(danger == true) {
			danger = false;
			instance_destroy(ctrl_music);
			if(game_level < 12) {
				asteroid_count ++;
			}
			alarm[0] = 120;
		}
	}
}

if(game_score >= life_benchmark && game_lives != 9) {
	life_benchmark += 10000;
	game_lives ++;
	play_audio(sfx_1up, 1, false, 0, false);
}

clamp(game_lives, 0, 9);