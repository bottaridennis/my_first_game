/// @description Move the Ships

// Set the x-value
x = centreX + (500*dcos(posValue)) + xOffset;

// Set the y-value
y = centreY + (300*dsin(posValue));

// Increment posValue
posValue += 1;

// Reduce the xOffset value
if (xOffset > 0) xOffset = floor(xOffset * 0.99);