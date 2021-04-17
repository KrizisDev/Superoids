/// @desc Start the game

if(timer < -60) {
	if(ctrl_game.game_started == false) {
		ctrl_game.game_started = true;
		play_audio(sfx_start, 1, false, 0, false);
		play_audio(sfx_ship_shoot, 1, false, 0, false);
		z_color = false;
		z_blink = 4;
		alarm[0] = z_blink;
		alarm[1] = 120;
		ctrl_game.alarm[0] = 121;
		flash_screen();
	}
}