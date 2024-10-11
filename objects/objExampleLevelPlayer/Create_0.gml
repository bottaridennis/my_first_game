/// @description Setup the Player Ship

// Play the music track
audio_play_sound(sndTrack2, 1,true);

// Set the values for the flat and tilted Sprites
baseSprite = sprPlayerShip_Light;
tiltSprite = sprPlayerShip_Light_Tilt;

// Set values for the Ship's movement
thrust = 0.1;
currSpeed = 0;
maxSpeed = 5;

// Set the base ship Sprite's centre position
baseShip_CentreX = 128;
baseShip_CentreY = 128;

// Set the left gun's location
baseFire_LeftOffsetX = (85-baseShip_CentreX)/2;
baseFire_LeftOffsetY = (55-baseShip_CentreY)/2;

// Set the right gun's location
baseFire_RightOffsetX = (170-baseShip_CentreX)/2;
baseFire_RightOffsetY = (55-baseShip_CentreY)/2;

// Set canFire to true
canFire = true;

// Set hasFired to false
hasFired = false;

// Set the muzzleFrame to 0 (used when the ship has fired)
muzzleFrame = 0;

// Set a number of steps before the ship can fire again
gunDelay = 30;


// Set that the next gun to fire is the 'left'
left = true;
right = false;
