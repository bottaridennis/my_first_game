/// @description Draw the enemy ship or the Explosion

// If the object is not already in the process of being destroyed
if (!isDestroyed)
{
	draw_self();
}
// Show the explosion sprite frame
else
{
	// Get the total number of frames in the anim
	totalFrames = sprite_get_number(sprExplosionAnim);
	
	// Show the sprite frame
	draw_sprite_ext(sprExplosionAnim, frameNum, x,y,image_xscale,image_yscale,0,c_white,1);
	
	// If the current frame is the last frame, destroy this object
	if (frameNum == totalFrames) instance_destroy();
	
	// Increment the frameNum
	frameNum++;
}