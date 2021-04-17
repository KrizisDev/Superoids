/// @desc Enter initials

if(state = 0) {
	if(input_check(vk_right, 0) || input_check(vk_left, 0)) {
		play_audio(sfx_select, 1, false, 0.005, false);
	}
	selected_letter += (input_check(vk_right, 0) ? 1 : (input_check(vk_left, 0) ? -1 : 0));

	if(selected_letter <= 0) {
		selected_letter = 26;
	} else if(selected_letter >= 27) {
		selected_letter = 1;
	}
}

y_offset = lerp(y_offset, 0, 0.05);
alpha = lerp(alpha, 1, 0.1);