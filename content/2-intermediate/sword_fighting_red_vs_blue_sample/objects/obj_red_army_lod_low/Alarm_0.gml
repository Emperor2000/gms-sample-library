/// @description Insert description here
if (point_distance(x,y,obj_player.x,obj_player.y) < lod_distance && instance_number(obj_red) < global.max_allowed_red) {
	instance_create_layer(x,y,"Instances",obj_red);
	instance_destroy();
}

if (hp <= 0) {
	instance_destroy();	
}
alarm[0] = 60+irandom_range(-50, 180);



//ADD YOUR GAME LOGIC HERE, BUT REMEMBER THAT OBJ_RED_SMALL_ARMY_MANAGER IS RESPONSIBLE FOR TARGET MANAGEMENT