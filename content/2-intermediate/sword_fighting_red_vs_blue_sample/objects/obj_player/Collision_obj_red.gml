/// @description Insert description here
// You can write your code in this editor

#region sprite management
if (sprite_index == spr_blue_attack) { 
	other.hp -= 0.1; //update enemy hp
	if (sprite_index == spr_blue_attack_ultimate) {
		other.hp -= 0.3; //reduce enemy hp by 0.3 if ultimate attack
	}
}
#endregion
#region cooldown
if (kb_cooldown <= 0) {
	kb_cooldown = 5;
}
#endregion
#region attacking
#region damage number management
if (is_attacking) {
	if (!other.hit_by_player) {
		other.hit_by_player = true;
		other.flash_alpha = 1;
		var _inst = instance_create_depth(other.x,other.y,-1,obj_damage_number);
		_inst.color = c_aqua;
		if (sprite_index == spr_blue_attack) {
			_inst.damage_amount = 10;
		with (_inst) {
			motion_add(point_direction(x,y,obj_player.x,obj_player.y)+180,1);
		}
	}
	if (sprite_index == spr_blue_attack_ultimate) {
	
	_inst.damage_amount = 30;
	_inst.color = c_yellow;
	_inst.image_xscale *= 1.3;
	_inst.alpha = 2;
	_inst.image_yscale = _inst.image_xscale;
	with (_inst) {
		motion_add(point_direction(x,y,obj_player.x,obj_player.y)+180,3);
		}
	}
	if (sprite_index == spr_blue_attack_ultimate2) {
		_inst.damage_amount = 20;	
		}
	}
	#endregion
	#region decals
	with (other) {	
		if (other.strike_cooldown <= 0) {
			if (id != obj_red_wall)
				motion_add(point_direction(x,y,obj_player.x,obj_player.y)+180,irandom_range(5,15));	
		
			if (obj_player.sprite_index == spr_blue_attack_ultimate2) {
			hp -= 10;	
			flash_color = c_purple;
			}
			if (obj_player.sprite_index == spr_blue_attack_ultimate) {
				hp -= 5;	
				flash_color = c_purple;
			}	
			if (obj_player.image_index < 11) {
				hp -= 3;
			} else if (obj_player.image_index >= 11 && obj_player.image_index <= 12) {
				hp -= 5;
				flash_color = c_purple;
			} else {
				hp -= 9;
				flash_color = c_orange;
			}
			flash_alpha = 1;
			other.strike_cooldown = 20;
			instance_create_depth(x,y,1,obj_blood);
			instance_create_depth(x,y,1,obj_blood);
			instance_create_depth(x,y,1,obj_blood);
		}
	}
	#endregion
}
#endregion