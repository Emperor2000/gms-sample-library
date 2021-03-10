#region update flash
if (flash_alpha > 0) {
	flash_alpha -= 0.05;	
}
#endregion



#region sprite and speed management
	if (speed == 0 && !attacking && sprite_index != spr_blue_walk) {
		sprite_index = spr_red_idle;	
	}

	if (sprite_index = spr_red_attack) {
		image_speed = 0.25;	
	} else {
		image_speed = 0.5;	
	}
#endregion

#region target management
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
#region attack target
	if (instance_exists(target)) {
		#region move to target
		if (target != -1) {
				image_angle = point_direction(x,y,target.x,target.y)-90;
				move_towards_point(target.x, target.y, move_speed);
		}
		#endregion
		#region update animation/sprite
		if (speed != 0 && !attacking  && sprite_index != spr_red_walk) {
			sprite_index = spr_red_walk;	
		}
		#endregion	
		#region set attacking to true
		if (point_distance(x,y,target.x, target.y) < 50) {
			attacking = true;
		}
		#endregion
		#region update sprite index to attacking
		if (attacking) {
			sprite_index = spr_red_attack;	
		}
		#endregion
		#region update attack
		if (attacking && sprite_index == spr_red_attack && image_index >= image_number -1) {
			attacking = false;	
		}
		#endregion
		#region approach target if position meeting hostile
		if (position_meeting(x,y,obj_blue)) {
			x = xprevious;
			y = yprevious;
			move_towards_point(target.x, target.y, -1);
		}
		#endregion
		#region approach player if position meeting with player
			if (position_meeting(x,y,obj_player)) {
			x = xprevious;
			y = yprevious;
			move_towards_point(obj_player.x, obj_player.y, -4);
			//obj_player.motion_add(point_direction(x,y,obj_player.x,obj_player.y)+180, 1);
		}
		#endregion
		#region approach blue if position meeting with blue
			if (position_meeting(x,y,obj_blue)) {
			var _inst = instance_position(x,y,obj_blue);
			x = xprevious;
			y = yprevious;
			if (_inst != -4) {
			move_towards_point(_inst.x, _inst.y, -1);
			//obj_player.motion_add(point_direction(x,y,obj_player.x,obj_player.y)+180, 1);
			}
		}
		#endregion
		#region collision with red, update x and y to prev x and prev y
			if (position_meeting(x,y,obj_red)) {
			var _inst = instance_position(x,y,obj_red);
			x = xprevious;
			y = yprevious;
			if (_inst != -4) {
			}
		}
	#endregion
		attack_cooldown -= 1;
		if (attacking && sprite_index == spr_red_attack && image_index >= 2) {
			if (point_distance(x,y,target.x, target.y) <= hit_range) {
				if (attack_cooldown <= 0) {
					attack_cooldown = attack_cooldown_init;
					target.hp -= 1;
					target.flash_alpha = 1;
				}
					motion_add(point_direction(x,y,target.x,target.y),1);
					image_angle = point_direction(x,y,target.x,target.y) + irandom_range(180-40, 180+40)-90;
			}
			#endregion
		}
	}
#region health management
	if (hp <= 0) {
		var _c = instance_create_depth(x,y,5,obj_red_corpse);
		_c.image_angle = image_angle;
		instance_destroy();	
	}
#endregion
#region reset if target does not exist
	if (!instance_exists(target)) {
		speed = 0;	
		attacking = false;
	}
	#endregion
#region on hit management
	if (hit_by_player && !hit_by_player_trigger) {
		var _a = irandom_range(1, 4);
		//audio_play_sound_on(emitter,asset_get_index("s_hit" + string(_a)), false, 1);
		alarm[0] = hit_by_player_cooldown;	
		hit_by_player_trigger = true;
		
	}
#endregion
#region audio update pos
audio_emitter_position(emitter,x,y,0);
#endregion