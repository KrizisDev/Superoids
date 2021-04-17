// Only allow ONE singular instance of an object to exist in-game
function singleton() {
	if(instance_number(object_index) > 1) {
		instance_destroy(id, false); // Destroy the object without triggering its "Destroy" event
		exit;
	}
}

// Play audio
function play_audio(_snd, _pitch, _pan, _variance, _loop) {
	if(audio_is_playing(_snd)) {
		audio_stop_sound(_snd);
	}
	audio_sound_pitch(_snd, random_range(_pitch - _variance, _pitch + _variance));
	if(_pan == false) {
		audio_play_sound(_snd, 0, _loop);
	} else {
		audio_play_sound_at(_snd, x, 0, 0, 200, 200, 1, _loop, 0);
	}
}

// Input system
function input_check(_key, _type) {
	switch(_type) {
		case 0: // Pressed
		return keyboard_check_pressed(_key);
		break;
		
		case 1: // Held
		return keyboard_check(_key);
		break;
		
		case 2: // Released
		return keyboard_check_released(_key);
		break;
	}
}

// Warp object across the room
function warp_object() {
	var sprite_margin = max(sprite_width, sprite_height);
	move_wrap(true, true, sprite_margin / 2);
}
	
// Check if a value is even
function is_even(_value) {
	if(_value % 2 <= 1) {
		return true;
	}
}

// Check if a value is odd
function is_odd(_value) {
	if(_value % 2 >= 1) {
		return true;
	}
}

// Various draw functions packaged in one (to save yourself from clogging up the entire code with draw_set_XXXX)
function draw_set(_color, _font, _halign, _valign) {
	draw_set_color(_color);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}

// Reset the draw functions' parameters
function draw_reset() {
	draw_set_color(c_white);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

// Add score
function add_score(_amount) {
	ctrl_game.game_score += _amount;
}

// Draw text with a colored outline
function draw_text_outlined(_x, _y, _str, _color, _outline_color) {
	draw_set_color(_outline_color); // Outline
	draw_text(_x, _y - 1, _str);
	draw_text(_x - 1, _y - 1, _str);
	draw_text(_x - 1, _y, _str);
	draw_text(_x - 1, _y + 1, _str);
	draw_text(_x, _y + 1, _str);
	draw_text(_x + 1, _y + 1, _str);
	draw_text(_x + 1, _y, _str);
	draw_text(_x + 1, _y - 1, _str);
	
	draw_set_color(_color); // Actual text
	draw_text(_x, _y, _str);
}

// Draw score
function draw_score(_score) {
	return string_replace_all(string_format(_score, 6, 0), " ", "0");
}

// Save score
function save_score() {
	if(ctrl_game.game_score > global.highscore) {
		global.highscore = ctrl_game.game_score;
	}
}

// Load score
function load_score() {
	ini_open("save.kz");
	global.highscore = ini_read_real("data", "highscore", 0);
	ini_close();
}

// Flash the screen
function flash_screen(){ 
	ctrl_game.flash_alpha = 1;
}

// Reset stats
function reset_stats() {
	ctrl_game.game_score = 0;
	ctrl_game.game_level = 0;
	ctrl_game.game_lives = 3;
	ctrl_game.y_offset = -8;
	ctrl_game.gameover_alpha = 0;
	ctrl_game.asteroid_count = 4;
	ctrl_game.life_benchmark = 10000;
	ctrl_game.music_timer = 0;
	ctrl_game.music_note = 0;
}

function ds_grid_delete_row(_grid, _row) {
	var _grid_width = ds_grid_width(_grid);
	var _grid_height = ds_grid_height(_grid);

ds_grid_set_grid_region(_grid, _grid, 0, _row + 1, _grid_width - 1, _grid_height - 1, 0, _row);
ds_grid_resize(_grid, _grid_width, _grid_height - 1);
}