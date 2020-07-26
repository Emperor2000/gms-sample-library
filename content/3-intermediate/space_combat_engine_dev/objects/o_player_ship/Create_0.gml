///@description ship variables
image_xscale = 2;
image_yscale = 2;
//movement::
max_speed = 2;
acceleration = 0.05;
turning_speed = 0.5;
image_speed = 0;
//diplomacy::
faction = FACTION_TYPE.BLUE		
friction_amount = 0.05;


//combat::

//creation init
firing_cooldown = 30;
inaccuracy = 3;
hp = 100;
max_hp = 100;
shield = 0;   //Not in use.



WEAPON_TYPE = LASER;
WEAPON_FIRERATE = noone;


//targeting init
enable_fire = true;
has_target = false;
target_instance = noone;





switch (WEAPON_TYPE) {
	case (LASER): {
		WEAPON_FIRERATE = global.LASER_CLD/2;
		break;
	}
		
}











