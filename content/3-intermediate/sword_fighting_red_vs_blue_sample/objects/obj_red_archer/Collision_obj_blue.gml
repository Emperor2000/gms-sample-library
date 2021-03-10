/// @description Insert description here
// You can write your code in this editor

#region hit draw dmg number 
if (attack_cooldown*3 <= 0) {
var _inst = instance_create_depth(other.x,other.y,-1,obj_damage_number);


#region add velocity in opposite direction (target is knockbacked
other.motion_add(point_direction(x,y,other.x,other.y), -5);
#endregion

#region set attack cooldown
attack_cooldown = attack_cooldown_init;
#endregion

#region apply damage number settings
_inst.damage_amount = 1;
_inst.color = c_blue;
#endregion

#region create blood
instance_create_depth(x,y,1,obj_blood);
instance_create_depth(other.x,other.y,1,obj_blood);
#endregion
}
#region apply kb to self
motion_add(point_direction(x,y,other.x,other.y), -0.1);
#endregion
#region apply kb to other
with (other) {
motion_add(point_direction(x,y,other.x,other.y), -0.1);	
}
#endregion

#endregion