/// @desc Draw things

if(game_over == true && room != rm_highscores) {
	draw_sprite_ext(spr_gameover, image_index, room_width / 2, (room_height / 2) - 64 + y_offset, 1, 1, image_angle, image_blend, gameover_alpha);
}