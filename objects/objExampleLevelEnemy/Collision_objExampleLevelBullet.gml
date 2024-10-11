/// @description Process Bullet Collision

// If the object is not already in the process of being destroyed
if (!isDestroyed)
{
	// Destroy the bullet
	instance_destroy(other);
	
	// Set the value so that we do not try to start this process again
	isDestroyed = true;
	
	// Play an explosion sound
	audio_play_sound(SFX_Explosion_Big,1,false);
}