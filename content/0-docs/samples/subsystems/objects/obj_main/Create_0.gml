/// @description Insert description here
// You can write your code in this editor
path_start(path0, 0.1, path_action_reverse, false);



subsystem1_x = x-lengthdir_x(20, image_angle);
subsystem1_y = y-lengthdir_y(0, image_angle);

subsystem2_x = x+lengthdir_x(20, image_angle);
subsystem2_y = y+lengthdir_y(0, image_angle);

//subsystems
subsystem1 = instance_create_layer(subsystem1_x, subsystem1_y, "Instances2", obj_gun_subsystem);
subsystem2 = instance_create_layer(subsystem2_x, subsystem2_y, "Instances2", obj_gun_subsystem2);
