event_inherited();

projectile = Projectile(spr_test_bullet, 1, damage_type.kinetic, 10);

make_shoot = function() {
	projectile.instance_create_projectile(position_get(), direction);
}
