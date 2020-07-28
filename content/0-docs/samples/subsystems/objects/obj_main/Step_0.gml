/// @description Insert description here
// You can write your code in this editor
subsystem1_x = x-lengthdir_x(20, image_angle);
subsystem1_y = y-lengthdir_y(0, image_angle);

subsystem2_x = x+lengthdir_x(20, image_angle);
subsystem2_y = y+lengthdir_y(0, image_angle);




//angle
subsystem1.image_angle = image_angle;
subsystem2.image_angle = image_angle;

//pos
subsystem1.x = subsystem1_x;
subsystem1.y = subsystem1_y;
subsystem2.x = subsystem2_x;
subsystem2.y = subsystem2_y;




if (subsystem1.subsystem_health <= 0) {
	instance_destroy();	
}

if (subsystem2.subsystem_health <= 0) {
	instance_destroy();	
}