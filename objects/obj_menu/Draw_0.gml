/// @desc Draw menu

// Control the elements' opacity
draw_set_alpha(alpha);

// Game logo
draw_sprite(sprite_index, image_index, (room_width / 2) - x_offset, (room_height / 2) - 24 + y_offset);

// "HIGHSCORE: XXXXXX"
draw_set(c_white, fnt_yal, fa_right, fa_top);
draw_text_outlined(357 - x_offset, 142 + y_offset, "HIGHSCORE: " + draw_score(global.highscore), c_white, c_black);

// "PRESS _ TO START"
draw_set(c_white, fnt_millington, fa_center, fa_top);
draw_text_outlined((room_width / 2) + x_offset, (room_height / 2) + 34 + abs(y_offset), "PRESS     TO START", c_white, c_black);

// Colored "Z" letter
draw_set((z_color == true ? $4400FF : c_white), fnt_millington, fa_left, fa_top);
draw_text_outlined(240 + x_offset, (room_height / 2) + 34 + abs(y_offset), "Z", (z_color == true ? $4400FF : c_white), c_black);

if(ctrl_game.game_started == false) {
	// "[options menu coming soon]"
	draw_set(c_gray, fnt_yal, fa_center, fa_top);
	draw_text_outlined(room_width / 2, (room_height / 2) + 48 + (abs(y_offset) * 2), "[press X for options]", c_gray, c_black);
	
	// "@2020 Made by Krizis"
	draw_set(c_white, fnt_yal, fa_center, fa_bottom);
	draw_text_outlined(room_width / 2, room_height - 2, "@2020 Made by Krizis", c_white, c_black);
}

// Reset the draw functions' parameters
draw_reset();
draw_set_alpha(1);