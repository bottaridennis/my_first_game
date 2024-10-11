// Movimento con i comandi da tastiera
if (keyboard_check(ord("W"))) {
    motion_add(image_angle, 0.1);
}
if (keyboard_check(ord("S"))) {
    motion_add(image_angle, -0.1);
}
if (keyboard_check(ord("D"))) {
    image_angle -= 4;
}
if (keyboard_check(ord("A"))) {
    image_angle += 4;
}

// Movimento circolare attorno ai bordi della stanza
move_wrap(true, true, 0);

// Calcolo della posizione di sparo
var _spawn_x = x + lengthdir_x(16, image_angle);
var _spawn_y = y + lengthdir_y(16, image_angle);

// Controllo dello sparo
if (mouse_check_button_pressed(mb_left)) {
    var _proiettile = instance_create_layer(_spawn_x, _spawn_y, "instances", obj_bullet);
    _proiettile.direction = image_angle;
    _proiettile.speed = 10;
    _proiettile.image_angle = _proiettile.direction;
}

// Movimento con la levetta
if (instance_exists(obj_stick)) {
    // Calcola la direzione e la lunghezza dalla levetta
    var _dx = mouse_x - (obj_stick.x);
    var _dy = mouse_y - (obj_stick.y);
    var _length = point_distance(obj_stick.x, obj_stick.y, mouse_x, mouse_y);

    if (_length < obj_stick.stick_radius) {
        _length = _length / 10; // Modifica per la velocità
    } else {
        _length = obj_stick.stick_radius / 10; // Usa il raggio massimo
    }

    var _angle = point_direction(obj_stick.x, obj_stick.y, mouse_x, mouse_y);
    motion_add(_angle, _length); // Aggiungi movimento in base all'angolo della levetta
}

// Rallenta la navicella quando non ci sono input
if (!keyboard_check(ord("W")) && !keyboard_check(ord("S")) &&
    !keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
    speed *= 0.95; // Rallenta la navicella del 5% ogni passo
}



// Limita la velocità massima
var _max_speed = 10; // Modifica questo valore in base alle tue necessità
if (speed > _max_speed) {
    speed = _max_speed;
}
