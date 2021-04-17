/// @desc Ship code


function move_ship() { // Move the ship
	if(input_check(vk_up, 1) == true) {
		if(audio_is_playing(sfx_ship_thruster) == false) {
			audio_play_sound_on(thruster_pan, sfx_ship_thruster, true, 0);
		}
		image_speed = 1;
		accel = 0.075 // Accelerate the ship if UP is pressed
	} else {
		audio_stop_sound(sfx_ship_thruster);
		image_index = 0;
		image_speed = 0;
		accel = 0; // Remove the acceleration if UP isn't pressed
		speed -= (speed > 0 ? 0.005 : 0); // Slowly make the ship stop
	}
}
function rotate_ship() { // Rotate the ship
	if((input_check(vk_right, 1) && input_check(vk_left, 1)) == false) { // Stop rotation if both RIGHT and LEFT are pressed
		if(input_check(vk_right, 1) == true) {
			dir -= (input_check(ord("X"), 1) ? 2.5 : 5); // Rotate right
			global.time_multiplier += (input_check(ord("X"), 1) ? 0.015 : 0.03);
		} else if(input_check(vk_left, 1) == true) {
			dir += (input_check(ord("X"), 1) ? 2.5 : 5); // Rotate left
			global.time_multiplier += (input_check(ord("X"), 1) ? 0.015 : 0.03);
		}
	}
	image_angle = dir; // Apply rotation
}
function shoot_bullet() { // Shoot bullets
	var firing = input_check(ord("Z"), 0); // Holding Z
	if(firing) {
		if(firerate_countdown <= 0 && instance_number(obj_bullet) < 8) {
			// Create a bullet at the tip of the ship
			var bullet = instance_create_layer(x + lengthdir_x(7, image_angle), y + lengthdir_y(7, image_angle), "Instances", obj_bullet);
			bullet.direction = dir;
			play_audio(sfx_ship_shoot, 1, true, 0.01, false);
			alarm[0] = 1;
		}
	}
	if(firerate_countdown > 0) {
		firerate_countdown --;
	}
}
function calculate_time() {
	global.time_multiplier = lerp(global.time_multiplier, speed / 3, 0.1);
	global.time_multiplier = clamp(global.time_multiplier, 0.05, 1);
}

move_ship();
rotate_ship();
shoot_bullet();

// Calculate the time multiplier thingy i don't. know
calculate_time();

// Clamp the ship's speed
speed = clamp(speed, 0, 3);

// Warp the ship across the room
warp_object();

// Apply movement to the ship
motion_add(dir, accel);

// Reduce invincibility frames
if(invincibility_frames > 0) {
	invincibility_frames --;
}
image_alpha = (invincibility_frames % 6 < 3 ? 1 : 0);

audio_emitter_position(thruster_pan, x, 0, 0);