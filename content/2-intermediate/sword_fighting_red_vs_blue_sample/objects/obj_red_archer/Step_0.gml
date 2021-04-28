#region manage speed and sprite
if (speed == 0 && !attacking && sprite_index != spr_blue_walk) {
	sprite_index = spr_red_idle;	
}

if (sprite_index = spr_red_attack) {
	image_speed = 0.25;	
} else {
	image_speed = 0.5;	
}
#endregion
#region targeting
//nearest enemy
var _target_blue = -4;
if (instance_exists(obj_blue)) {
var _target_blue = instance_nearest(x,y, obj_blue);
} else {
target = obj_player;	
}
var _target_player = instance_nearest(x,y,obj_player);

if (_target_blue != -1 && _target_blue != -4 && _target_player != -1 && _target_player != -4 ) {
	
	
if (point_distance(x,y,_target_blue.x, _target_blue.y) >= point_distance(x,y,_target_player.x, _target_player.y)) {
		target = _target_player;
	} else {
			target = _target_blue;
			if (!instance_exists(obj_blue)) {
			target = _target_player;	
			}
	}
}
#endregion
#region move to target
if (instance_exists(target)) {
	if (target != -1) {
			image_angle = point_direction(x,y,target.x,target.y)-90;
			if (point_distance(x,y,target.x,target.y) > 30) {
			move_towards_point(target.x, target.y, move_speed);
			}
	}
#endregion
#region update animation and state
	if (speed != 0 && !attacking  && sprite_index != spr_red_walk) {
		sprite_index = spr_red_walk;	
	}

	if (point_distance(x,y,target.x, target.y) < 50) {
		attacking = true;
	}


	if (attacking) {
		sprite_index = spr_red_attack;	
	}


	if (attacking && sprite_index == spr_red_attack && image_index >= image_number -1) {
		attacking = false;	
	}
#endregion


#region update pos
	if (position_meeting(x,y,obj_blue)) {
		x = xprevious;
		y = yprevious;
		move_towards_point(target.x, target.y, -0.1);
	}
		if (position_meeting(x,y,obj_player)) {
		x = xprevious;
		y = yprevious;
		move_towards_point(obj_player.x, obj_player.y, -1);
		//obj_player.motion_add(point_direction(x,y,obj_player.x,obj_player.y)+180, 1);
	}
	#endregion
	
	#region target and engage
		if (position_meeting(x,y,obj_blue)) {
		var _inst = instance_position(x,y,obj_blue);
		x = xprevious;
		y = yprevious;
		if (_inst != -4) {
		move_towards_point(_inst.x, _inst.y, -1);
		}
	}
		if (position_meeting(x,y,obj_red)) {
		var _inst = instance_position(x,y,obj_red);
		x = xprevious;
		y = yprevious;
		if (_inst != -4) {
			//do something
		}
	}
#endregion

#region fire bow
	//dmg
	attack_cooldown -= 1;
	if (attacking && sprite_index == spr_red_attack && image_index >= 2 && !attack_cooldown) {
		attack_cooldown = attack_cooldown_init;
		var _proj = instance_create_layer(x,y,"Instances", obj_red_arrow);
		_proj.image_angle = point_direction(x,y,target.x, target.y);
		_proj.direction = _proj.image_angle;
	}
}
#endregion
#region health management
if (hp <= 0) {
	var _c = instance_create_depth(x,y,5,obj_red_corpse);
	_c.image_angle = image_angle;
	instance_destroy();	
}
#endregion
#region reset action when there is no target
if (!instance_exists(target)) {
	speed = 0;	
	attacking = false;
}
#endregion
#region hit management
if (hit_by_player && !hit_by_player_trigger) {
	alarm[0] = hit_by_player_cooldown;	
	hit_by_player_trigger = true;
}
#endregion