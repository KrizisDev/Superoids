/// @desc Destroy the ship (if hostile)

if(hostile == true && other.invincibility_frames == 0) {
	instance_destroy(id);
	instance_destroy(other.id);
}