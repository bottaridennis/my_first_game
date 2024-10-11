/// @description Set Some Initial Values

// Set the frameNum to 0 (used when the ship is being destroyed)
frameNum = 0;

// Set the value to false
isDestroyed = false;

// Change the enemy ship image to be 50% of the Sprite's size
image_xscale = 0.5;
image_yscale = 0.5;

// Initialise these to 0 as they will be updated by the object that created this object
posValue = 0;
xOffset = 0;

// Set the centre location that the ship will be revolving around
centreX = room_width/2;
centreY = 500;