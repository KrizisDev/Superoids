/// @desc Destroy ship

if(invincibility_frames == 0) {
	instance_destroy(id);
	instance_destroy(other.id);
}