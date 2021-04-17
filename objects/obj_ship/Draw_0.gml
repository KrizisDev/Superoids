/// @desc Draw thruster

draw_self();

if(input_check(vk_up, 1)) {
	draw_sprite_ext(spr_thruster, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha);
}