var _distance = sprite_get_width(sprite_index) / 2;
var _x = x;
var _y = y;


var _laser = instance_create_layer(_x, _y, "Instances", LASER_RED);
_laser.direction = image_angle + global.LASER_SPREAD;
_laser.speed = global.LASER_SPD;
_laser.image_angle = image_angle;