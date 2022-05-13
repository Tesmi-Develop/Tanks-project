zoom = 3;

view_width = 1920 / zoom;
view_height = 1080 / zoom;

angle = 0;
scale_x = 1;
scale_y = 1;

_x = 0;
_y = 0;
_angle = 0;

speed_x = 0.1; 
speed_y = 0.1;
speed_rotate = 0.1;

target = obj_player;
target_x = -1;
target_y = -1;

window_with = view_width * scale_x;
winfow_height = view_height * scale_y;

_camera = view_camera[0];


view_set_wport(view_wport[0], view_width)
view_set_hport(view_hport[0], view_height)

display_set_gui_size(view_width, view_height);
surface_resize(application_surface, window_with, winfow_height);

alarm[0] = 1;

_speed = 5;
position_x = 0;
position_y = 0;

fullscreen = false;
