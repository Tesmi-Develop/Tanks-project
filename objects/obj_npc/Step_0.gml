image_angle = direction;

// Change movement & rotation speed
movement_speed = approach(movement_speed, sign(input_movement) * movement_speed_max, input_movement != 0 ? speed_acceleration : speed_friction);
rotation_speed = approach(rotation_speed, sign(input_rotation) * rotation_speed_max, input_rotation != 0 ? speed_acceleration : speed_friction);
direction += rotation_speed;

// Change position
var direction_vector = Vector2(0, 0).set_angle(-direction).multi(movement_speed, movement_speed);
position_add(direction_vector);
delete direction_vector;
