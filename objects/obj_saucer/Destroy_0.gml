/// @desc

play_audio(sfx_asteroid_boom, 1, true, 0.01, false);
audio_stop_sound(sfx_saucer);
audio_emitter_free(pan);

if(instance_exists(ctrl_music) == true) {
	ctrl_music.timer -= 0.6; // Reduce the timer in the ctrl_music object
} else {
	ctrl_game.music_timer -= 0.6; // Reduce the music timer in the ctrl_game object since ctrl_music doesn't exist
}

repeat(30) {
	var debris = instance_create_layer(x, y, "Instances", obj_debris);
	debris.direction = random(360);
}