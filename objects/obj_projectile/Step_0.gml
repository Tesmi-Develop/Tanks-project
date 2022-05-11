image_angle = direction;

// movement
var direction_vector = Vector2(0, 0).set_angle(-direction, false);
var movement_vector = direction_vector.multi(Vector2(_speed));

position_add(movement_vector);

// collision
if (place_meeting(x, y, self)) {
	var instance = instance_place(x, y, self);
	
	onCollision.fire(instance);
}
