/// @desc Highscore list initialization

depth = -20;
state = 0; // 0 = Initials, 1 = Display highscores, 2 = Zero score

name = "";
current_initial = 0;
selected_letter = 1;
#region Letters
letter[1] = "A";
letter[2] = "B";
letter[3] = "C";
letter[4] = "D";
letter[5] = "E";
letter[6] = "F";
letter[7] = "G";
letter[8] = "H";
letter[9] = "I";
letter[10] = "J";
letter[11] = "K";
letter[12] = "L";
letter[13] = "M";
letter[14] = "N";
letter[15] = "O";
letter[16] = "P";
letter[17] = "Q";
letter[18] = "R";
letter[19] = "S";
letter[20] = "T";
letter[21] = "U";
letter[22] = "V";
letter[23] = "W";
letter[24] = "X";
letter[25] = "Y";
letter[26] = "Z";
#endregion

y_offset = -8;
alpha = 0;

// Create the highscore list
highscore_list = ds_grid_create(2, 10);

// Check if the player purposely lost the game with 0 score
zero_score = (ctrl_game.game_score == 0 ? true : false);
if(zero_score == true) {
	state = 2;
}

// Load the grid
ini_open("save.kz");
ds_grid_read(highscore_list, ini_read_string("data", "scoreboard", ""));
ini_close();

// Resize the grid
ds_grid_resize(highscore_list, 2, 10);