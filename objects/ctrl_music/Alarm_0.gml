/// @desc Play some of that sweet, sweet music

switch(note) {
	case 1:
	play_audio(mus_note1, 1, false, 0, false);
	note = 2;
	break;
	
	case 2:
	play_audio(mus_note2, 1, false, 0, false);
	note = 1;
	break;
}

alarm[0] = timer;