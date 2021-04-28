/// @description Insert description here
// You can write your code in this editor
hp_max = 200; //the max amount of health that can ever be obtained
hp = hp_max; //the start amount of hp, and the actual amount
move_speed = 1; //the move speed 
damage = 20; //the damage
cooldown = 5; //weapon cooldown
image_speed = 0.5; //the image speed
is_attacking = false; //whether the player is attacking or not
is_walking = false; //whether the player is walking or not
strike_cooldown = 5; //the striking cooldown of the player
kb_cooldown = 5; //the knockback cooldown
depth = -999; //the player is always on top of all  other objects
//every 3rd move is combo
combo_count = 0; //managing player combos
hit = false;

#region init flash shading
flash_alpha = 0;
flash_color = c_white;
#endregion


#region init audio
//listener
audio_listener_orientation(0,1,0, 0,0,1); //init audio listener object

//emitter 
global.main_emitter = audio_emitter_create(); //define main emitter
#endregion