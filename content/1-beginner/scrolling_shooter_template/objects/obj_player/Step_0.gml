/// @description Insert description here
// You can write your code in this editor
f_x = 0;
f_y = 0;


if (keyboard_check(ord("W"))) { //up
	f_y -= move_speed;
}

if (keyboard_check(ord("S"))) { //down
	f_y += move_speed;	
}

if (keyboard_check(ord("A"))) { //left
	f_x -= move_speed;	
}

if (keyboard_check(ord("D"))) { //right
	f_x += move_speed;	
}

x += f_x;
y += f_y;


if (!firing_cooldown_bool) {
	if (mouse_check_button_pressed(mb_left)) {
		var _proj = instance_create_layer(x,y,"Instances", obj_projectile_basic);	
			_proj.direction = point_direction(x,y,mouse_x,mouse_y);
			_proj.image_angle = image_angle;
			firing_cooldown_bool = true;
			alarm[0] = _proj.firing_cooldown_timer;
	}
}