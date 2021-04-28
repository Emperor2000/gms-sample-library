/// @description constants, globals, savedata, etc.

//retreat



//range
global.fallback_range = 25;	//retreat range
global.laser_range = 250;	//laser attack range
//screensaver
global.combat_size = 0;		//combat size initial value
//global.faction_amount = 4;
global.join_battle = false; //WORK IN PROGRESS - allows the player to compete in battles

global.game_scale = 2;		//global game scale






#region Weapons
enum WEAPON_TYPE {		//enum for different weapon types.
   LASER,
   MISSILE,
   FLAK,
   CANNON,
   POINT_DEFENSE,
   PLASMA
   }
   //weapon damage
   global.LASER_DMG = 5;
   global.MISSILE_DMG = 10;
   global.FLAK_DMG = 20;
   global.CANNON_DMG = 10;
   global.POINT_DEFENSE_DMG = 20;
   global.PLASMA_DMG = 0.3;
   //weapon inaccuracy
   global.PLASMA_SPREAD = irandom_range(-15, 15);
   global.LASER_SPREAD = irandom_range(-3, 3);
   global.MISSILE_SPREAD = 0;
   global.FLAK_SPREAD = irandom_range(-5, 5);
   global.CANNON_SPREAD = irandom_range(-2, 2);
   global.POINT_DEFENSE_SPREAD = irandom_range(-10, 10);
   
   //projectile speed
   global.PLASMA_SPD = 10;
   global.LASER_SPD = 5;
   global.MISSILE_SPD = 3;
   global.FLAK_SPD = 4;
   global.CANNON_SPD = 8;
   global.POINT_DEFENSE_SPD = 4;
   
   //projectile reload
   global.PLASMA_CLD = 10;
   global.LASER_CLD = 80; //modified from 4 x 20
   global.LASER_CLD_MIN_RANDOM = global.LASER_CLD / 40;
   global.LASER_CLD_MAX_RANDOM = global.LASER_CLD / 3;
   global.MISSILE_CLD = 120;
   global.FLAK_CLD = 80;
   global.CANNON_CLD = 60;
   global.POINT_DEFENSE_CLD = 20;
   
   //projectile armor NOT IN USE
   #endregion
   
   
#region Diplomacy
enum FACTION_TYPE {		//enum for different factions
BLUE,
RED,
YELLOW,
PURPLE,
GREEN
}

#endregion
   
   
   
   
   