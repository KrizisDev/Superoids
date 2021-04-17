/// @desc Revive player (if more than 0 lives)

if(ctrl_game.game_lives != 0) {
	var ship = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship);
	ship.dir = 90;
	ship.invincibility_frames = 90;

	// Also revive the music controller
	var music = instance_create_layer(0, 0, "Instances", ctrl_music);
	music.timer = music_timer;
	music.note = music_note;
} else {
	game_over = true;
	alarm[2] = 90;
}