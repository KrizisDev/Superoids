/// @desc Ship initialization

accel = 0; // Speed of the ship
dir = 90; // Direction of the ship
firerate_countdown = 0; // Variable that prevents the player from rapidly shooting bullets
invincibility_frames = 0;
thruster_pan = audio_emitter_create();