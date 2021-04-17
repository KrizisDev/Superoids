/// @desc [placeholder]

if(other.hostile != true) {
	instance_destroy(id);
	instance_destroy(other.id);
	
	if(ctrl_game.game_lives > 0) {
		add_score(1000);
	}
}