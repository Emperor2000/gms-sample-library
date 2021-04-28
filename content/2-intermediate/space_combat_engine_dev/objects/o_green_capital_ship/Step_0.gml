/// @description step
var _nearest_enemy = instance_find_enemy(ship_parent);
if (image_alpha < 1) {
image_alpha +=0.02;	
}


//move_towards_ship(_nearest_enemy); - THIS SHIP HAS BEEN CONFIGURED TO DISABLE MOVEMENT

//USE IF YOU WANT TO IMPLEMENT A COOLDOWN
	//if (instance_exists(_nearest_enemy)) {
	//	if (point_distance(id.x, id.y, _nearest_enemy.x, _nearest_enemy.y) < 400) {
	//		if (enable_fire == true) {
	//		create_plasma_green_rotational();
	//		alarm[0] = (WEAPON_COOLDOWN);
	//		enable_fire = false;
	//		}
	//	}
	//}
	
	
//ROTATIONAL PLASMA BEAM -- SIMPLY REMOVE THE COMMENT TO ACTIVATE	
//create_plasma_green_rotational();	

//RANDOMLY TARGETING PLASMA -- SIMPLY REMOVE THE COMMENT TO ACTIVATE
create_plasma_green_random();





if (hp <= 0) {
instance_create_layer(x, y, "Projectiles2", o_explosion);
instance_destroy();	
}

image_angle = ROTATION_AMOUNT_NET; // rotate the ship
ROTATION_AMOUNT_NET += ROTATION_AMOUNT; //increment rotation in degrees 