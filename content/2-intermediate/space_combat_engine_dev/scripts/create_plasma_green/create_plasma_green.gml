var _distance = sprite_get_width(sprite_index) / 2;
var _x = x;
var _y = y;


var _plasma = instance_create_layer(_x, _y, "Projectiles2", PLASMA_GREEN);
_plasma.direction = image_angle + global.PLASMA_SPREAD;
_plasma.speed = global.PLASMA_SPD;
_plasma.image_angle = image_angle;