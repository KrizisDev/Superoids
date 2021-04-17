/// @desc Saucer initialization

spawn_dir = choose(0, 1); // 0 = Left, 1 = Right
hsp = 0;
vsp = 0;
shoot_timer = 60;
move_timer = choose(0, 30, 60, 90, 120);

switch(spawn_dir) {
	case 0:
	x = -16;
	hsp = 0.75;
	break;
	
	case 1:
	x = room_width + 16;
	hsp = -0.75;
	break;
}

y = irandom_range(32, room_height - 32);

mask_index = spr_saucer_big_hurtbox;

pan = audio_emitter_create();
audio_play_sound_on(pan, sfx_saucer, true, 0);
audio_sound_pitch(sfx_saucer, 1 * global.time_multiplier);