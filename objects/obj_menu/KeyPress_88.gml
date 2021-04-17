/// @desc Go to options

if(timer < -60 && ctrl_game.game_started == false) {
	play_audio(sfx_ship_shoot, 1, false, 0.01, false);
	room_goto(rm_options);
}