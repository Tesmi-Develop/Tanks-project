event_inherited();

input_movement = keyboard_check(ord("W")) - keyboard_check(ord("S"));
input_rotation = keyboard_check(ord("A")) - keyboard_check(ord("D"));

show_debug_message(movement_speed)
show_debug_message(rotation_speed)
