/// @param {sprite} sprite
/// @param {real} damage
/// @param {type_damage} type_damage
/// @param {real} _speed
function Projectile(_sprite, _damage, _type_damage, _speed){
	return new __class_projectile(_sprite, _damage, _type_damage, _speed);
}

/// @param {sprite} sprite
/// @param {real} damage
/// @param {type_damage} type_damage
/// @param {real} _speed
function __class_projectile(_sprite, _damage, _type_damage, _speed) constructor {
	
	sprite = _sprite;
	damage = _damage;
	type_damage = _type_damage;
	speed = _speed;
	
	static instance_create_projectile = function(_position, _direction){
		var projectile = instance_create_depth(_position.x, _position.y, 0, obj_projectile);
		projectile.direction = _direction;
		projectile.sprite_index = sprite;
		projectile.damage = damage;
		projectile.type_damage = type_damage;
		projectile._speed = speed;
	}
}
