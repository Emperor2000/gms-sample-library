///@arg0 target_ship
var _target_ship = argument0;

if (instance_exists(_target_ship)) {
	var _direction = point_direction(x, y, _target_ship.x, _target_ship.y);
	var _distance = point_distance(x, y, _target_ship.x, _target_ship.y);
	image_angle = direction;

	if (speed > max_speed) {
		speed = max_speed*1.5;	
	}
}