_x = camera_get_view_x(_camera);
_y = camera_get_view_y(_camera);
_angle = camera_get_view_angle(_camera);

if(instance_exists(target)){
	target_x = clamp(target.x - view_width / 2, 0, room_width - view_width);
	target_y = clamp(target.y - view_height / 2, 0, room_height - view_height);
}

position_x = round(lerp(_x, target_x, speed_x));
position_y = round(lerp(_y, target_y, speed_y));

camera_set_view_pos(_camera, position_x, position_y);

camera_set_view_size(_camera, view_wport, view_hport);

view_set_wport(view_wport[0], view_width)
view_set_hport(view_hport[0], view_height)


surface_resize(application_surface, view_width, view_height);

display_set_gui_size(view_wport, view_hport);


