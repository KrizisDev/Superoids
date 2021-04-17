/// @desc Asteroid code

speed = spd * global.time_multiplier; // Apply movement
image_angle += rotation_speed * global.time_multiplier; // Apply rotation

// Warp the asteroid across the room
warp_object();