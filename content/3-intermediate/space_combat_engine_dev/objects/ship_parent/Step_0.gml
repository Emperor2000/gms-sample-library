/// @description step
if (image_alpha < 1) {
	image_alpha +=0.02;		//fade in the ship slowly
}
var _nearest_enemy = instance_find_enemy(ship_parent);	//var nearest enemy instance
	if (instance_exists(_nearest_enemy)) {				//check if enemy instance still exists
		move_towards_ship(_nearest_enemy);				//move towards enemy instance if it does exist
		if (point_distance(id.x, id.y, _nearest_enemy.x, _nearest_enemy.y) < global.laser_range) {	//check if point_distance is within range
			if (enable_fire == true) {	//If ship can fire (cooldown expired)
				create_laser_purple();		//create a laser respecful to the ships faction
				alarm[0] = global.LASER_CLD;	//alarm equal to laser cooldown
				enable_fire = false;			//disable firing
			}
		}
		
		
		
		
		
		
			if (point_distance(id.x, id.y, _nearest_enemy.x, _nearest_enemy.y) < global.fallback_range) {	//if point distance is less than fallback range
				move_away_from_ship(_nearest_enemy);	//move away from target vassal
		}
	}
	
	
if (hp <= 0) {	//if hp is lower than 0
	instance_create_layer(x, y, "Projectiles2", o_explosion);	//create an explosion object
	instance_destroy();		//destroy this instance
}
