event_inherited();

create_timer(1, function() {
	projectile = Projectile(tank.target, spr_test_bullet, 10, damage_type.kinetic, 10);

	reload = 30;

	make_shoot = function() {
		projectile.instance_create_projectile(position_get(), direction);
	}
})

