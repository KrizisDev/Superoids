/// @desc Asteroid initialization

direction = irandom_range(0, 360);
speed = 1;
image_index = choose(0, 1, 2);

// Various variables
spd = 1; // The actual speed of the asteroid (depending on the size of the asteroid)
rotation_speed = random_range(-2, 2); // The rotation speed of the asteroid (also depends on the size of the asteroid)

// Set the asteroid's collision circle to be the same as the sprite its currently being accompanied with
mask_index = sprite_index;