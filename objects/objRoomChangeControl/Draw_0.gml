/// @description Display information on how to change Rooms

// If the current room is not the first room
if (room != room_first) draw_text(50,50,"Press Left to go to Previous Room");

// If the current room is not the last room
if (room != room_last) draw_text(50,100,"Press Right to go to Next Room");