/// @desc

var fade_speed = 1 * global.time_multiplier;

lifetime -= fade_speed;

if(lifetime < 15) {
	image_alpha = (is_odd(lifetime) ? 1 : 0);
}

if(lifetime <= 0) {
	instance_destroy(id);
}

speed = spd * global.time_multiplier;

warp_object();