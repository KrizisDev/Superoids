/// @desc

// Draw space
draw_self();
draw_set_alpha(0.1);
gpu_set_blendmode(bm_subtract);
draw_sprite_tiled(spr_space_fog, image_index, fog_pos, 0);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

// Draw black screen
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_set_color(c_white);