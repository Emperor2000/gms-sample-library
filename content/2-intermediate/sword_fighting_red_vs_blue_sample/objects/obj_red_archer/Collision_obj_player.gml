/// @description Insert description here
// You can write your code in this editor
if (attack_cooldown*6 <= 0) {
	attack_cooldown = 40;
instance_create_depth(x,y,1,obj_blood);
}