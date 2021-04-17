/// @desc Draw highscore list

draw_set_alpha(alpha);
draw_set(c_white, fnt_millington, fa_middle, fa_middle);

switch(state) {
	case 0:
		draw_text_outlined(room_width / 2, (room_height / 2) + y_offset, "ENTER YOUR INITIALS TO SAVE\nYOUR SCORE TO YOUR PERSONAL\nHIGHSCORE BOARD.", c_white, c_black);
		draw_text_outlined(room_width / 2, (room_height / 2) + 56 + y_offset, "___", c_white, c_black);
		draw_text_outlined(room_width / 2, (room_height / 2) + 54 + y_offset, name + letter[selected_letter], c_white, c_black);
		draw_text_outlined(room_width / 2, (room_height / 2) + 96 - y_offset, "PRESS Z TO CONFIRM LETTER", c_white, c_black);
		draw_text_outlined(room_width / 2, (room_height / 2) + 112 - y_offset, "PRESS LEFT OR RIGHT TO CHANGE LETTER", c_white, c_black);
	break;
	
	case 1: // Draw the highscore list
		draw_text_outlined(room_width / 2, (room_height / 2) - 96, "HIGHSCORES", c_white, c_black);
		var i;
		for(var i = 0; i < ds_grid_height(highscore_list); i ++) {
			draw_text_outlined(room_width / 2, (room_height / 2) - 64 + (16 * i), string(i + 1) + ".  " + string(highscore_list[# 0, i]) + "  " + draw_score(highscore_list[# 1, i]), c_white, c_black);
		}
		draw_text_outlined(room_width / 2, (room_height / 2) + 96, "PRESS Z TO GO TO MENU", c_white, c_black);
	break;
	
	case 2: // Zero score
		draw_text_outlined(room_width / 2, (room_height / 2) + 16 + y_offset, "YOU KNOW, YOU CAN'T REALLY\nSAVE YOUR SCORE IF YOU DON'T\nHAVE ANY IN THE FIRST PLACE.\n\nYOU'RE GONNA HAVE TO TRY\nA LITTLE HARDER THAN THAT.", c_white, c_black);
		draw_text_outlined(room_width / 2, (room_height / 2) + 96 - y_offset, "PRESS Z TO GO TO MENU", c_white, c_black);
	break;
}

draw_reset();
draw_set_alpha(1);