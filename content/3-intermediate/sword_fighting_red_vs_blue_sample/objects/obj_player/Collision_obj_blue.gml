/// @description Insert description here
// You can write your code in this editor

#region knockback
if (kb_cooldown <= 0) { // check if the player can apply knockback
with (other) {
	motion_add(point_direction(x,y,other.x,other.y)+180,0.01); //apply kb
}
kb_cooldown = 5; //set cooldown
}
#endregion