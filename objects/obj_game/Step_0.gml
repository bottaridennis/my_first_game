/// @description Insert description here
// You can write your code in this editor
var _new_width = display_get_width();
var _new_height = display_get_height();

// Controlla se la dimensione è cambiata
if (_new_width != surface_get_width(application_surface) || _new_height != surface_get_height(application_surface)) {
    surface_resize(application_surface, _new_width, _new_height);
    display_set_gui_size(_new_width, _new_height);
    window_set_size(_new_width, _new_height);
}
