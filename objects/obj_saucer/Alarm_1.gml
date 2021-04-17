/// @desc Go up or down

if(y == room_height - 32) {
	vsp = -0.75;
} else if(y == 32) {
	vsp = 0.75;
} else {
	vsp = choose(-0.75, 0, 0.75);
}