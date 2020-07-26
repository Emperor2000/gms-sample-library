///@description ship variables

//movement::
max_speed = 2;			//default maximum speed.
acceleration = 0.05;	//default acceleration.
turning_speed = 0.5;	//default turning speed.
image_speed = 0;		//default image speed (0 because there is only 1 frame per ship)
//diplomacy::
faction = FACTION_TYPE.BLUE		//faction type, add factions in game_manager create event (see enum).
friction_amount = 0.05;			//default friction --> ship slows down slowly.


//combat::

//creation init
hp = 10;



WEAPON_TYPE = LASER;		//default weapon
WEAPON_FIRERATE = noone;	//default firerate --> depends on weapon, duplicate object as child of ship_parent and edit --> also see enum below


//targeting init
enable_fire = true;	//boolean for checking if a ship fired, if yes, cooldown
has_target = false; //boolean for checking if a ship has an active target
target_instance = noone; //enemy target instance





switch (WEAPON_TYPE) {	//different weapon types:
	case (LASER): {		//if laser:
		WEAPON_FIRERATE = global.LASER_CLD;  //<-- weapon firerate = laser
		break; //break out of case
	}
		
}











