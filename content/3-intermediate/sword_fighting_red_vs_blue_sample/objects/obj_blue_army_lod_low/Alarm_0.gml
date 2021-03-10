/// @description Insert description here
// You can write your code in this editor
if (point_distance(x,y,obj_player.x,obj_player.y) < lod_distance && instance_number(obj_blue) < global.max_allowed_blue) {
	instance_create_layer(x,y,"Instances",obj_blue);
	instance_destroy();
}
if (hp <= 0) {
	instance_destroy();	
}
alarm[0] = 60+irandom_range(-50, 180);

