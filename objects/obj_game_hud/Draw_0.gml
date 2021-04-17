/// @desc Draw HUD

draw_set(c_white, fnt_millington, fa_middle, fa_middle);

// "SCORE"
draw_text_outlined(((room_width / 2) / 2) + x_offset, (room_height / 2) - 128 + y_offset, "SCORE", c_white, c_black);
draw_text_outlined(((room_width / 2) / 2) + x_offset, (room_height / 2) - 112 + y_offset, draw_score(ctrl_game.score_draw), c_white, c_black);

// "LEVEL"
draw_text_outlined(room_width / 2, (room_height / 2) - 128 + y_offset, "LEVEL", c_white, c_black);
draw_text_outlined(room_width / 2, (room_height / 2) - 112 + y_offset, string_replace_all(string_format(ctrl_game.game_level, 2, 0), " ", "0"), c_white, c_black);

// "LIVES"
draw_text_outlined(((room_width / 2) * 1.5) - x_offset, (room_height / 2) - 128 + y_offset, "LIVES", c_white, c_black);
draw_text_outlined(((room_width / 2) * 1.5) - x_offset, (room_height / 2) - 112 + y_offset, string_repeat("X", ctrl_game.game_lives), c_white, c_black);

draw_reset();