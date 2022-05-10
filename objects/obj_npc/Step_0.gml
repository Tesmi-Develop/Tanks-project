image_angle = direction;

// movement
// change movement and rotation speed
movement_speed = approach(movement_speed, input_movement != movement.stand ? base_movement_speed * input_movement : 0, input_movement != movement.stand ? speed_acceleration : speed_friction);
rotation_speed = approach(rotation_speed, input_rotation != movement.stand ? base_rotation_speed * input_rotation : 0, input_rotation != movement.stand ? speed_acceleration : speed_friction);

direction += rotation_speed;

// change position
var direction_vector = Vector2(0, 0).set_angle(-direction, false);
var movement_vector = direction_vector.multi(Vector2(movement_speed));

position_add(movement_vector)
