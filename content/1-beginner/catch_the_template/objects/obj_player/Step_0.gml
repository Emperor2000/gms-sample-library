/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) {
	hspeed = -5;	
}

if (keyboard_check(vk_right)) {
	hspeed = 5;
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	hspeed  = 0;	
}