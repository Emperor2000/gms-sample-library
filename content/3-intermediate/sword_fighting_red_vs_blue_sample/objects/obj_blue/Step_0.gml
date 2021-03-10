#region flash and hit management
if (flash_alpha > 0) {
	flash_alpha -= 0.05;	
}


if (hit) {
	attacking = false;	
}
#endregion
#region speed and animation speed
speed = 0;
if (speed == 0 && !attacking && x == xprevious && y == yprevious && !hit) {
	sprite_index = spr_blue_idle;	
}

if (sprite_index = spr_blue_attack) {
	image_speed = 0.25;	
} else {
	image_speed = 0.5;	
}
#endregion
#region targeting
//nearest enemy
var _target_red = instance_nearest(x,y, obj_red);
var _target_player = instance_nearest(x,y,obj_red);

if (_target_red != -1 && _target_red != -4 && _target_player != -1 && _target_player != -4 ) {
	
	
	
if (point_distance(x,y,_target_red.x, _target_red.y) >= point_distance(x,y,_target_player.x, _target_player.y)) {
		target = _target_player;
	} else {
			target = _target_red;
	}
}
#endregion
#region attacking
if (instance_exists(target)) {
	if (target != -1) {
			image_angle = point_direction(x,y,target.x,target.y)-90;
			move_towards_point(target.x, target.y, move_speed);
	}

	if (speed != 0 && !attacking  && sprite_index != spr_blue_walk && !hit) {
		sprite_index = spr_blue_walk;	
	}

	if (point_distance(x,y,target.x, target.y) < 50) {
		attacking = true;
	}


	if (attacking) {
		sprite_index = spr_blue_attack;	
	}


	if (attacking && sprite_index == spr_blue_attack && image_index >= image_number -1) {
		attacking = false;	
	}

	if (position_meeting(x,y,obj_red)) {
		_inst = instance_position(x,y,obj_red);
		x = xprevious;
		y = yprevious;
	//	move_towards_point(target.x, target.y, -1);
	other.x = other.xprevious;
	other.y = other.yprevious;
	}
	
	if (position_meeting(x,y,obj_blue)) {
		x = xprevious;
		y = yprevious;
		//move_towards_point(target.x, target.y, -1);
	}


	//dmg
	attack_cooldown -= 1;
	if (attacking && sprite_index == spr_blue_attack && image_index >= 2) {
		if (point_distance(x,y,target.x, target.y) <= hit_range) {
			if (attack_cooldown <= 0) {
				attack_cooldown = attack_cooldown_init;
				target.hp -= 1;
				target.flash_alpha = 1;
				var _inst = instance_create_depth(other.x,other.y,-1,obj_damage_number);
				_inst.damage_amount = 1;
				_inst.color = c_red;
			}
				motion_add(point_direction(x,y,target.x,target.y),1);
				image_angle = point_direction(x,y,target.x,target.y) + irandom_range(180-40, 180+40)-90;
		}
	}
}
#endregion
#region health management
if (hp <= 0) {
	var _c = instance_create_depth(x,y,5,obj_blue_corpse);
	_c.image_angle = image_angle;
	instance_destroy();	
}
#endregion
#region attack trigger
if (!instance_exists(target)) {
	speed = 0;	
	attacking = false;
}
#endregion
#region if there is no target, create a random target
if (target == -1 || target == -4 || !instance_exists(obj_red)) {
	move_towards_point(irandom(400), irandom(400),0.3);	
}
#endregion
#region define when the instance is hit
if (hp_previous != hp) {
	hit = true;
	sprite_index = spr_blue_hit
}
#endregion
#region disable hit
if (hit && image_index >= image_number -1) {
	hit = false;
}
#endregion
#region update previous hp to current step (end event
hp_previous = hp;
#endregion