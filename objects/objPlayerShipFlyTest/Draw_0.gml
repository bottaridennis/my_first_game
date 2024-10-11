/// @description Draw Enemy Ships with rotation and tilting

// Get a value for the new X position based on an offset from the middle of the room
var newX = centreX + (500*dsin(rot));

// Get the difference from the same value last frame
var xDiff = lastX - newX;

// Update the value for lastX with the newly created value
lastX = newX;

// Default to using the spriteList_Base array
arrayToUse = spriteList_Base;

// Default to showing the sprite at the default scale
spriteScale = 1;

// If the difference in X value is larger than 3
if (abs(xDiff) >= 3)
{
	// Use the spriteList_BaseTilt array (slight tilt)
	arrayToUse = spriteList_BaseTilt;
	// If the difference in X is greater than 0, flip the x scale to -1
	if (xDiff < 0) spriteScale = -1;
}

// For each of the Enemy Ship types (6 in total)
for (var i = 0; i < array_length(arrayToUse); i++)
{
	// Set spriteIndex to be the value from the array
	var spriteIndex = arrayToUse[i];
	
	// All sprites used in this code only have 1 frame so set this value to 0
	var subImage = 0;
	
	// Set shipX to the same value at the top of this code
	var shipX = newX;
	
	// Value for the Gap between ships
	var shipYSeparation = 600*i;
	
	// Offset value as 'rot' will be increased each step
	var shipYMovementSpeed = rot*-5;
	
	// Total vertical distance needed to show 6 ships with a separation of 500px each
	var totalShipDisplayHeight = 600 * array_length(arrayToUse);
	
	// To add some vertial movement, set shipY to start at -150
	// Add a separation of 500px from the previous ship and change the Y position by 5x the 'rot' value
	// Reset the ship's position to -150 if its value goes above totalShipDisplayHeight
	var shipY = 1600 + ((shipYSeparation + shipYMovementSpeed) % totalShipDisplayHeight);
	
	// Ship's Scale X that changes based on the ships horizontal movement speed
	var shipScaleX = spriteScale;
	
	// Ship's Scale Y which will always by 1
	var shipScaleY = 1;
	
	// A 20 degree in each direction rotation to give the impression the ship is turning as it nears the sides of the screen
	var shipRotation = 35*dsin(rot);
	
	draw_sprite_ext(spriteIndex, subImage, shipX, shipY, shipScaleX, shipScaleY, shipRotation, c_white, 1);
}


// Increase the value 'rot'
rot += 1;