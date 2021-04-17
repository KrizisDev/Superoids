/// @desc Destroy the obstacle

if(hostile == false) {
	with(other.id) {
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
		
			case spr_saucer_big:
			add_score(1000);
			break;
		}	
	}
	instance_destroy(other.id);
	instance_destroy(id);
}