/// @desc Spawn asteroids

// Create the music controller if it doesn't exist
if(global.music_enabled == true) {
	if(instance_exists(ctrl_music) == false) {
		instance_create_layer(0, 0, "Instances", ctrl_music);
	}
}

// Various game stuff
game_level ++;
flash_screen();
play_audio(sfx_nextlevel, 1, false, 0, false);
play_audio(sfx_asteroid_boom, 1, false, 0, false);
obj_space.fog_pos = irandom_range(0, 288);

// Destroy remaining bullets
instance_destroy(obj_bullet);

repeat(asteroid_count) {
	// Repeatedly choose a position for an asteroid until it's far enough from the player
	do {
		var _x = irandom_range(0, room_width);
		var _y = irandom_range(0, room_height);
	} until (point_distance(_x, _y, obj_ship.x, obj_ship.y) > 100);
	
	// And then spawn it
	instance_create_layer(_x, _y, "Instances", obj_asteroid);
}