/// @desc [placeholder]

var i;
for(i = 0; i < buttons; i ++) {
	draw_set(c_white, fnt_millington, fa_center, fa_center);
	draw_text_outlined(room_width / 2, (room_height / 2.52) + button_height * i, button[i], (btn_index == i ? $4400FF : c_white), c_black);
}

draw_text_outlined(room_width / 2, room_height - 48, "PRESS Z TO CHANGE SETTING", c_white, c_black);
draw_text_outlined(room_width / 2, room_height - 32, "PRESS X TO GO BACK", c_white, c_black);