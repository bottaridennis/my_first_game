if (point_distance(mouse_x, mouse_y, x, y) < stick_radius) {
    // Se il mouse è all'interno della levetta
    var _dx = mouse_x - x;
    var _dy = mouse_y - y;
    
    // Calcola l'angolo e la velocità
    var _angle = point_direction(x, y, mouse_x, mouse_y);
    var _length = min(stick_radius, point_distance(x, y, mouse_x, mouse_y));
    
    // Muovi il giocatore in base alla levetta
    motion_add(_angle, _length / 10); // Modifica il divisore per la velocità
}
