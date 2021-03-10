/// @description Insert description here
// You can write your code in this editor
speed = 0;
if (hp <= 0) {
	instance_destroy();	
}



if (flash_alpha > 0) {
flash_alpha -= 0.05;
}


x = xprevious;
y = yprevious;



if (hp != previous_hp) {
	flash_alpha = 0.4;		
}


previous_hp = hp;