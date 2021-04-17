/// @desc Saucer code

audio_sound_pitch(sfx_saucer, 1 * global.time_multiplier);
x += hsp * global.time_multiplier;
y += vsp * global.time_multiplier;
image_speed = 1 * global.time_multiplier;
if(instance_exists(obj_ship) == true) {
	shoot_timer -= 1 * global.time_multiplier;
}
move_timer -= 1 * global.time_multiplier;

if(shoot_timer <= 0) {
	alarm[0] = 1;
	shoot_timer = 60;
}

if(move_timer <= 0) {
	alarm[1] = 1;
	move_timer = choose(0, 30, 60, 90, 120);
}

y = clamp(y, 32, room_height - 32);

switch(spawn_dir) {
	case 0:
	if(x >= room_width + 16) {
		instance_destroy(id, false);
		audio_stop_sound(sfx_saucer);
	}
	break;
	
	case 1:
	if(x <= -16) {
		instance_destroy(id, false);
		audio_stop_sound(sfx_saucer);
	}
	break;
}

audio_emitter_position(pan, x, 0, 0);