/// @description player mechanics

#region Player fighter movement
//----------------------
//Fighter movement
//----------------------


//Set the sprite to face the mouse.
var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = _mouse_direction;

//if mb_right is pressed _thrust equals true.
var _thrust = mouse_check_button(mb_right);
//Change image_index based on whether trust is true, if true, image_index is 1, if false, image_index is 0.
image_index = _thrust;
#endregion


//Check key input
#region engine thrust
if (_thrust) {
	motion_add(image_angle, acceleration*5);
	if (speed > max_speed) {
		speed = max_speed;	
	}
	
} else {
	friction = friction_amount;	
}
#endregion






#region player ship firing
//-------------------------
//Fighter firing
//-------------------------
var _fire_rate = WEAPON_FIRERATE;
if (_fire_rate > WEAPON_FIRERATE || _fire_rate == noone || _fire_rate == "" || _fire_rate == 0) {
	_fire_rate = WEAPON_FIRERATE;	
}
var _fire_laser = mouse_check_button_pressed(mb_left) || mouse_check_button(mb_left);
if (_fire_laser && enable_fire) {
	create_laser();
	//alarm[1] = 30;
	alarm[1] = _fire_rate;
	enable_fire = false;
}
#endregion








