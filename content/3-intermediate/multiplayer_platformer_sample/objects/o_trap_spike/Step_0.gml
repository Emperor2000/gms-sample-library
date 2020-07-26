/// @description trap activate 
if (instance_exists(obj_player)) {
	if (place_meeting(id.x, id.y, obj_player) && !activated) {
		obj_player.dead = true;
		activated = true;
	}
}

if (activated) {
image_index = 1;	
}