/// @desc Flash the screen

// Draw flash on screen
draw_set_alpha(flash_alpha);
draw_set_color(c_white);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

if(global.retro_filter == true) {
	draw_sprite_ext(spr_scanlines, image_index, room_width / 2, room_height / 2, 1, 1, image_angle, image_blend, 0.15);
}