/// @description Create enemies for the level

// Set the number of enemy ships that should be present
waveShips = 20;

// Loop a number of times
for (var i = 0; i < waveShips; i++)
{
	// Create an enemy at position (0,0)
	enemyShip = instance_create_layer(0,0,"Instances",objExampleLevelEnemy);
	
	// Set it's posValue to be equally spread between 0 and 360
	enemyShip.posValue = i*(360/waveShips);
	
	// Add an offset value that is 100x its creation order
	// This is so that the ships fly onto screen
	enemyShip.xOffset = i*100;
}