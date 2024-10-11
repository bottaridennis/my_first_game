/// @description Draw the ship and any required muzzle flash
draw_self();

// If the value hasFired = true
if (hasFired)
{
	// Get the total number of frames in the anim
	totalFrames = sprite_get_number(sprPlayerBulletEmit)
	
	// Show the sprite frame from the position of the value that is set to true
	if (left == true) draw_sprite_ext(sprPlayerBulletEmit, muzzleFrame, x+baseFire_LeftOffsetX,y+baseFire_LeftOffsetY,0.5,0.5,0,c_white,1);
	if (right == true) draw_sprite_ext(sprPlayerBulletEmit, muzzleFrame, x+baseFire_RightOffsetX,y+baseFire_RightOffsetY,0.5,0.5,0,c_white,1);
	
	// If the current frame is the last frame
	if (muzzleFrame == totalFrames)
	{
		// Reset the muzzleFrame value
		muzzleFrame = 0;
		
		// Set hasFired to false
		hasFired = false;
	}
}