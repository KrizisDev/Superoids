/// @desc Bullet code

speed = 4 * global.time_multiplier;

// Decrease lifetime until it reaches 0
lifetime -= 1 * global.time_multiplier;

// Make the bullet flicker if its lifetime is less than 45
if(lifetime < 45) {
	image_alpha = (is_odd(lifetime) ? 1 : 0);
}

// Destroy the bullet once lifetime reaches 0
if(lifetime <= 0) {
	instance_destroy(id);
}

// Warp the bullet across the room
warp_object();