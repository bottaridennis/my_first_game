/// @description Insert description here
// You can write your code in this editor

// Move the bullet by the value 'moveSpeed'
y -= moveSpeed;

// Destroy the bullet if it is off of the top of the screen
if (y < -300) instance_destroy();