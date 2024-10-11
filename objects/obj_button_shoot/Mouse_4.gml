// Crea un proiettile
var _spawn_x = x + lengthdir_x(16, image_angle);
var _spawn_y = y + lengthdir_y(16, image_angle);

var _proiettile = instance_create_layer(_spawn_x, _spawn_y, "instances", obj_bullet);
_proiettile.direction = image_angle;
_proiettile.speed = 10;
