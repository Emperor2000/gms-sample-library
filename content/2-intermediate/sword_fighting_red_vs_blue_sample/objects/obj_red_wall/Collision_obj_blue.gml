/// @description Insert description here
// You can write your code in this editor
	if (attack_cooldown*3 <= 0) {
	var _inst = instance_create_depth(other.x,other.y,-1,obj_damage_number);
	other.motion_add(point_direction(x,y,other.x,other.y), -5);
	attack_cooldown = attack_cooldown_init;
	_inst.damage_amount = 1;
	_inst.color = c_blue;
	instance_create_depth(x,y,1,obj_blood);
	instance_create_depth(other.x,other.y,1,obj_blood);
	}
	with (other) {
	motion_add(point_direction(x,y,other.x,other.y), -0.1);	
	}

