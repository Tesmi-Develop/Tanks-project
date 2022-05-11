// statistics
hp_max = 0;
defense = [0, 0, 0, 0];
damage_reduction = 0; // changes from 0 to 1

// npc type
npc = noone; // type npc

// health
hp = hp_max;

// invulnerability
invulnerability = false;

// movement
movement_speed = 0;
rotation_speed = 0;

base_movement_speed = 0;
base_rotation_speed = 0;

speed_friction = 0.1;
speed_acceleration = 0.1;

input_movement = movement.stand;
input_rotation = rotation.stand;

// events
onHurt = Event();
onDeath = Event();
onHeal = Event();

// methods
__check_death = function() {
	if (hp > 0) return;
	
	onDeath.fire();
	
	instance_destroy();
}

try_hurt = function(_type_damage, _damage) {
	if (invulnerability) return;
	
	// check damage_reduction
	damage_reduction = clamp(damage_reduction, 0, 1);
	
	// consider damage_reduction
	_damage -= _damage * damage_reduction;
	
	// consider defense
	_damage -= defense[defense_type.general];
	_damage -= defense[_damage];
	
	// check damage
	if (_damage <= 0) _damage = 1;
	
	hp -= _damage;
	
	// fire event hurt
	onHurt.fire(_damage);
	
	__check_death();
}

heal = function(_hp) {
	onHeal.fire();
	
	hp += _hp;
	
	__check_death();
}
