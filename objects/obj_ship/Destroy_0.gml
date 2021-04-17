/// @desc Do things

// Also destroy the music controller
if(instance_exists(ctrl_music) == true) {
	ctrl_game.music_timer = ctrl_music.timer;
	ctrl_game.music_note = ctrl_music.note;
	instance_destroy(ctrl_music);
}

// Revive the player (if more than 0 lives)
ctrl_game.alarm[1] = 120;

play_audio(sfx_ship_boom, 1, true, 0.01, false);
ctrl_game.game_lives --;

// Debris
repeat(15) {
	var debris = instance_create_layer(x, y, "Instances", obj_debris);
	debris.spd = random_range(0.5, 1.25);
	debris.direction = random(360);
	debris.image_index = 1;
}

repeat(irandom_range(3, 5)) {
	var line = instance_create_layer(x, y, "Instances", obj_line);
	line.direction = random(360);
}

if(global.time_multiplier < 0.25) {
	global.time_multiplier = 0.25;
}

// Free the audio emitter to avoid memory leaks
audio_emitter_free(thruster_pan);