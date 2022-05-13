target = noone;

damage = 0;
type_damage = noone;

_speed = 0;

projectile = noone;

tank = noone;

reload = 0;

make_shoot = function() {}

shoot_timer = create_timer(1, function() {});

shoot = function() {
	if (shoot_timer.end_time) {
		make_shoot();
		activate_timer(shoot_timer, reload);
	}
}

// initilization
initilization_timer = create_timer(1, function() {
	
	tank.input_shoot.connect(shoot);
	
	delete initilization_timer;
})
