/// @desc Save initial/Go back

switch(state) {
	case 0:
	if(string_length(name) < 2) {
		name += letter[selected_letter];
		current_initial ++;
	} else {
		name += letter[selected_letter];
		state ++;
		save_score();
		ds_grid_add(highscore_list, 0, 9, name);
		ds_grid_add(highscore_list, 1, 9, ctrl_game.game_score);
		ds_grid_sort(highscore_list, 1, false);
		ds_grid_delete_row(highscore_list, 10);
		
		// Loop through the list and change every empty name to "__"
		var i;
		for(i = 0; i < ds_grid_height(highscore_list); i ++) {
			if(ds_grid_get(highscore_list, 0, i) == 0) {
				highscore_list[# 0, i] = "__";
			}
		}
		
		instance_destroy(obj_game_hud);
		room_goto(rm_highscores);

		// Save shit
		ini_open("save.kz");
		ini_write_real("data", "highscore", global.highscore);
		ini_write_string("data", "scoreboard", ds_grid_write(highscore_list));
		ini_close();
	}
	break;
	
	case 1:
		room_goto(rm_menu);
		instance_destroy(id);
		reset_stats();
		ds_grid_destroy(highscore_list);
	break;
	
	case 2:
		room_goto(rm_menu);
		instance_destroy(id);
		reset_stats();
		ds_grid_destroy(highscore_list);
	break;
}

play_audio(sfx_ship_shoot, 1, false, 0, false);