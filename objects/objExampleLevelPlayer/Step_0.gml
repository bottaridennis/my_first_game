/// @description Process Player Ship Movement and Weapons

// Check if the user is pressing A (Left)
if (keyboard_check(ord("A")))
{
	currSpeed -= thrust;
	draw_sprite_ext(sprPlayerShip_Thruster, 0, x+baseFire_LeftOffsetX,y+baseFire_LeftOffsetY,0.5,0.5,0,c_white,1);
}

// Check if the user is pressing D (Right)
if (keyboard_check(ord("D")))
{
	currSpeed += thrust;
}

// If the ship has a speed greater than 0.5
if (abs(currSpeed) > 0.5)
{
	// Set sprite_index to use tiltSprite
	sprite_index = 	tiltSprite;
	
	// Set the ship's scale so that it is tilting in the correct direction
	if (currSpeed > 0) image_xscale = -0.5;
	if (currSpeed < 0) image_xscale = 0.5;
}
else
// If the ship has a speed less than or equal to 0.5
{
	// Set sprite_index to use baseSprite
	sprite_index = baseSprite;	
}

// Change the x position by the value of currSpeed
x += currSpeed;

// Reduce the Ships speed by 1/8th of the value of thrust
if (currSpeed < 0) currSpeed += thrust/8;
if (currSpeed > 0) currSpeed -= thrust/8;

// Hard coded values at the left and right of the screen
if (x < 100 || x > 1266)
{
	// Stop the Ship's movement
	x -= currSpeed;
	currSpeed = 0;	
}

// If the ship has fired, increase the value of muzzleFrame
if (hasFired) muzzleFrame++;

// If the Ship can fire and the user is pressing the Space key
if (keyboard_check(vk_space) && canFire)
{
	// Prevent the Ship from firing again
	canFire = false;
	
	// Set that the Ship has Fired
	hasFired = true;
	
	// Create a bullet from whicheevr side is set to trueI
	if (left) instance_create_layer(x+baseFire_LeftOffsetX,y+baseFire_LeftOffsetY,"Instances",objExampleLevelBullet);
	if (right) instance_create_layer(x+baseFire_RightOffsetX,y+baseFire_RightOffsetY,"Instances",objExampleLevelBullet);
	
	// Play a bullet fire sound
	audio_play_sound(SFX_PlayerShip_BulletFire3,1,false);
	
	// Set an alarm to expire after 'gunDelay' frames
	alarm[0] = gunDelay;
}