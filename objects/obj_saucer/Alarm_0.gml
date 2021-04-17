/// @desc Shoot a bullet

if(instance_exists(obj_ship) == true) {
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.hostile = true;
	bullet.direction = point_direction(x, y, obj_ship.x, obj_ship.y);
	bullet.image_index = 1;
	play_audio(sfx_saucer_shoot, 1, true, 0.01, false);
}
