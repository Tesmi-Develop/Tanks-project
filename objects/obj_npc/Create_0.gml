// statistics
hp_max = 0;
defense = [0, 0, 0];
damage_reduction = 0; // changes from 0 to 1

// npc type
npc = noone;

// target
target = noone;

// health
hp = hp_max;

// invulnerability
invulnerability = false;

// parts tank
tower = noone;
base = noone;

// movement
movement_speed = 0;
rotation_speed = 0;

movement_speed_max = 0;
rotation_speed_max = 0;

speed_friction = 0.1;
speed_acceleration = 0.1;

input_movement = 0;
input_rotation = 0;

// events
on_hurt = Event();
on_death = Event();
on_heal = Event();

// inputs actions
input_shoot = Event();

// methods
check_death = function() {
	if (hp > 0) return;
	
	on_death.invoke();
	
	instance_destroy();
}

on_hurt.connect(check_death);
on_heal.connect(check_death);

try_hurt = function(_damage, _type_damage = damage_type.kinetic) {
	if (invulnerability) return;
	
	_damage -= defense[_type_damage];
	_damage -= _damage * clamp(damage_reduction, 0, 1);
	_damage = max(_damage, 1);
	hp -= _damage;
	
	on_hurt.invoke(_damage);
}

heal = function(_value) {
	hp = min(hp + abs(_value), hp_max);
	
	on_heal.invoke();
}

// interaction with parts tank
set_tower = function(_tower) {
	tower = instance_create_depth(x, y, depth - 1, _tower);
	tower.tank = self;
}

alarm[0] = 2;
