/// @description Insert description here
// You can write your code in this editor
if (firing_cooldown <= 0) {
	//create bullet
	var _proj = instance_create_layer(x, y, "Projectiles", obj_projectile2);
	if (instance_exists(obj_target)) { //make sure the target object exists
		_proj.direction = point_direction(x, y, obj_target.x, obj_target.y)+irandom_range(-firing_inaccuracy, firing_inaccuracy); //set direction and inaccuracy
	} 
	
	//increment cooldown
	firing_cooldown = firing_cooldown_incrementor;
	
	
	
}
firing_cooldown -= 1;


//we do not manage subsystem health here, rather we manage it in the main system