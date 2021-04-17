/// @desc [placeholder]

if(other.hostile != true && ctrl_game.game_lives > 0) {
	switch(sprite_index) {
		case spr_asteroid_big:
		add_score(20);
		break;
	
		case spr_asteroid_med:
		add_score(50);
		break;
	
		case spr_asteroid_small:
		add_score(100);
		break;
	}
}

instance_destroy(id);
instance_destroy(other.id);