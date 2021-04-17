/// @desc Update fog position

fog_pos += 0.5 * global.time_multiplier;
if(fog_pos >= 288) {
	fog_pos = 0;
}

alpha = lerp(alpha, 0, 0.02);