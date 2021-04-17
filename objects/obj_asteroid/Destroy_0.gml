/// @desc Split into 2 smaller asteroids (if possible)

play_audio(sfx_asteroid_boom, 1, true, 0.01, false);

var i;
for(i = 0; i < 2; i ++) {
	if(sprite_index != spr_asteroid_small) {
		var asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
	}
	switch(sprite_index) {
		case spr_asteroid_big: // Big asteroid
			// Set the asteroid's properties
			asteroid.sprite_index = spr_asteroid_med;
			asteroid.mask_index = spr_asteroid_med;
			asteroid.spd = 2;
			asteroid.rotation_speed = random_range(-3.5, 3.5);
			asteroid.direction = direction + (i == 0 ? -45 : 45);
			repeat(10) {
				var debris = instance_create_layer(x, y, "Instances", obj_debris);
				debris.direction = random(360);
			}
		break;
		
		case spr_asteroid_med: // Medium asteroid
			// Set the asteroid's properties
			asteroid.sprite_index = spr_asteroid_small;
			asteroid.mask_index = spr_asteroid_small;
			asteroid.spd = 3;
			asteroid.rotation_speed = random_range(-6, 6);
			asteroid.direction = direction + (i == 0 ? -45 : 45);
			repeat(6) {
				var debris = instance_create_layer(x, y, "Instances", obj_debris);
				debris.direction = random(360);
			}
		break;
		
		case spr_asteroid_small: // Small asteroid
			repeat(3) {
				var debris = instance_create_layer(x, y, "Instances", obj_debris);
				debris.direction = random(360);
			}
		break;
	}
}

// Make music faster
if(instance_exists(ctrl_music) == true) {
	ctrl_music.timer -= 0.6; // Reduce the timer in the ctrl_music object
} else {
	ctrl_game.music_timer -= 0.6; // Reduce the music timer in the ctrl_game object since ctrl_music doesn't exist
}

// Spawn a saucer (with a 2% chance)
if(random(50) < 1 && ctrl_game.game_score >= 10000 && instance_exists(obj_saucer) == false) {
	instance_create_layer(0, 0, "Instances", obj_saucer);
}