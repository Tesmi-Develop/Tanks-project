target = noone; // only type npc

type_damage = noone;

_speed = 0;

damage = 0;

// events
onCollision = Event();

onCollision.connect(function(_arguments) {
	if (!is_npc(_arguments[0].object_index)) return;
	if (_arguments[0].npc != target) return;
	
	_arguments[0].try_hurt(damage, type_damage);
	
	instance_destroy();
})
