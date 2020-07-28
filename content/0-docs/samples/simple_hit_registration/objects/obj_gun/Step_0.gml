image_angle = point_direction(id.x, id.y, mouse_x, mouse_y); //get the image angle
if (mouse_check_button_pressed(mb_left) && cooldown <= 0) {
	var _proj = instance_create_layer(x + lengthdir_x(8, image_angle), y+lengthdir_y(0, image_angle), "Instances", obj_proj); //spawn at tip of gun
	_proj.direction = image_angle;
	cooldown+= 10;
}

cooldown --;