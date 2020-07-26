/// @description bounce player off object



//error handling

if (instance_exists(obj_player)) {
	with (obj_player) {
		if (place_meeting(x+hspeed,y+vspeed, obj_player_border))
		{
		    hspeed = -hspeed;
		}
	}
}