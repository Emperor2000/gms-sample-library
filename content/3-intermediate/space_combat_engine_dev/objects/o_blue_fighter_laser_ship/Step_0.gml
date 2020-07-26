/// @description step
if (image_alpha < 1) {
image_alpha +=0.02;	
}
var _nearest_enemy = instance_find_enemy(ship_parent);

if (instance_exists(_nearest_enemy)) {
	var _distance_to_enemy = point_distance(id.x, id.y, _nearest_enemy.x, _nearest_enemy.y);
}


if (instance_exists(_nearest_enemy)) {
	move_towards_ship(_nearest_enemy);
	if (point_distance(id.x, id.y, _nearest_enemy.x, _nearest_enemy.y) < global.laser_range) {
		if (enable_fire == true) {
			create_laser_blue();
			alarm[0] = global.LASER_CLD + irandom_range(global.LASER_CLD_MIN_RANDOM, global.LASER_CLD_MAX_RANDOM);
			enable_fire = false;
		}
	}
	
	
	/*
		if (point_distance(id.x, id.y, _nearest_enemy.x, _nearest_enemy.y) < global.fallback_range) {
			move_away_from_ship(_nearest_enemy);
		}
		*/
	}


if (hp <= 0) {
	instance_create_layer(x, y, "Projectiles2", o_explosion);
instance_destroy();	
}