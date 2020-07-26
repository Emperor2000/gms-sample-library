///@description ship variables
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;

//movement::
max_speed = 0;
acceleration = 0.05;
turning_speed = 0.5; //disabled due to unique ship behaviour.
image_speed = 0;
//diplomacy::
faction = FACTION_TYPE.GREEN;	
friction_amount = 0.05;
move_speed = 0;

//combat::

//creation init::
firing_cooldown = 30;
inaccuracy = 3;
hp = 650;
shield = 0;   //Not in use.


//Type of weapon
WEAPON_TYPE = WEAPON_TYPE.PLASMA;
WEAPON_COOLDOWN = noone;

//rotate capital ship
ROTATION_AMOUNT = 0.05;
ROTATION_AMOUNT_NET = 0; //net rotation gain after every step.

//targeting init
enable_fire = true;
has_target = false;
target_instance = noone;





switch (WEAPON_TYPE) {
	case (WEAPON_TYPE.PLASMA): { //configure weapon as plasma shot
		WEAPON_COOLDOWN = global.PLASMA_CLD; //create a plasma shot
		break;
	}
		
}











