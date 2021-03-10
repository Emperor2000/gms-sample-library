/// @description Insert description here
// You can write your code in this editor
hp = 30; //start hp and actual hp
hp_max = hp; //max hp
move_speed = 0.5+random_range(-0.2, 0.2); //move speed + random added factor
target = -1; //target instance
attacking = false; //whether the instance is attacking
attack_distance = 50; //target range/distance
hit_range = 30; //hitting range
attack_cooldown_init = 60; //attack cooldown init
attack_cooldown = attack_cooldown_init; //attack cooldown actual
image_speed = 0.5; //animation speed
hit = false; //whether the character is hit
hp_previous = hp; //set previous hp
apply_kb = false; //whether knockback is being applied


flash_alpha = 0; //flash alpha update
flash_color = c_white; //update flash color
in_army = false; //army manager instance