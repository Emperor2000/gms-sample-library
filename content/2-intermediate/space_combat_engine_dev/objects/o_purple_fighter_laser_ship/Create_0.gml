///@description ship variables
image_xscale = 2;
image_yscale = 2
image_alpha = 0;
//movement::
max_speed = 1.5;
acceleration = 0.05;
turning_speed = 0.5;
image_speed = 0;
//diplomacy::
faction = FACTION_TYPE.PURPLE;	
friction_amount = 0.05;
move_speed = 1;

//combat::

//creation init
firing_cooldown = 30;
inaccuracy = 3;
hp = 10;
shield = 0;   //Not in use.



WEAPON_TYPE = LASER;
WEAPON_FIRERATE = noone;


//targeting init
enable_fire = true;
has_target = false;
target_instance = noone;





switch (WEAPON_TYPE) {
	case (LASER): {
		WEAPON_FIRERATE = global.LASER_CLD;
		break;
	}
		
}











