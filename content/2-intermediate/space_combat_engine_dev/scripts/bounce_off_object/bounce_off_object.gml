//Function params

///@arg object
///@arg acceleration
///@arg maxspeed
var _object = argument0;
var _acceleration = argument1;
var _maxspeed = argument2;

if (!instance_exists(_object)) exit;

//Calc bounce dir
var _bounce_direction = point_direction(_object.x, _object.y, x, y);
motion_add(_bounce_direction, _acceleration);
if (speed > _maxspeed) {
	speed = _maxspeed;	
}