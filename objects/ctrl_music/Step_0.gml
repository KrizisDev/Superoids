/// @desc Clamp the timer value

timer = clamp(timer, 12, 50);

if(instance_exists(obj_asteroid) == false) {
	instance_destroy(id);
}