 points = 0;
var _screen_width = display_get_width();
var _screen_height = display_get_height();

// Ridimensiona la superficie del gioco e adatta la GUI
surface_resize(application_surface, _screen_width, _screen_height);
display_set_gui_size(_screen_width, _screen_height);

// Disabilita il ridimensionamento automatico per mantenere proporzioni
window_set_fullscreen(false);
window_set_size(_screen_width, _screen_height);