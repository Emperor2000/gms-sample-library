/// @description Update() event (room_speed)

#region audio management
//update players pos listener
audio_listener_position(x,y,0); //update audio listener position

//make main emitter follow player
audio_emitter_position(global.main_emitter,x,y,0); //update emitter position
#endregion
#region hit shader management
if (flash_alpha > 0) { //update hit alpha
	flash_alpha -= 0.05;	
}
#endregion
#region animation playtime management
if (image_index == spr_blue_attack_ultimate) { //image speed is slower if the player is executing ultimate attack anim
	image_speed = 0.2;
	
} else { //default speed
	image_speed = 0.5;	
}
#endregion
#region set default sprite
if (!is_attacking && x == xprevious && y == yprevious) { //idle if player isnt moving and isnt attacking
sprite_index = spr_blue_idle;
}
#endregion
#region movement

var _move_x = (keyboard_check_direct(ord("D")) - keyboard_check_direct(ord("A"))) * move_speed; //x move
var _move_y = (keyboard_check_direct(ord("W")) - keyboard_check_direct(ord("S"))) * move_speed; //y move
x += _move_x; //update x
y -= _move_y; //update y

//rotate towards mouse
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90; //player always faces mouth position, subtract 90 from sprite orientation

#endregion
#region walk state
if (xprevious != x || yprevious != y && !is_walking && !is_attacking) { //if player isn't already walking, isnt attacking but he is moving
	is_walking = true; //set walking to enabled
	
	//define different attack animations
	if (sprite_index != spr_blue_attack && sprite_index != spr_blue_attack_ultimate && sprite_index != spr_blue_attack_ultimate2 && sprite_index != spr_blue_walk) {
	sprite_index = spr_blue_walk; //if not attacking, always update sprite to walk
	}
}
#endregion
#region combo and attack

if ((mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) && !is_attacking) { //check whether the player is about to attack
		is_attacking = true; //set attack to true
		sprite_index = spr_blue_attack; //update sprite index
		
		audio_play_sound_on(global.main_emitter, asset_get_index("s_slash" + string(irandom_range(2,3))),false,1); //update emitter
		if (combo_count >= 11 && combo_count < 12) { //combo count defines the type of sprite index
			sprite_index = spr_blue_attack_ultimate2; //update sprite index
					audio_play_sound_on(global.main_emitter, s_slash3,false,1); //play audio
			
		} 
		if (combo_count >= 12) { //alternative attack | ultimate
			sprite_index = spr_blue_attack_ultimate; //update sprite index
				audio_play_sound_on(global.main_emitter, s_slash3,false,1); //play audio
					audio_play_sound_on(global.main_emitter, s_slash3,false,1); //play audio
			combo_count = 1; //reset combo on end of attack chain
		}
		combo_count += 1; //increment combo count as the player is attacking
		if (collision_circle(x,y,50,obj_red, false, true)) { //check for collisions
			var _inst = collision_circle(x,y,30,obj_red,false,true); //define enemy
			var _a = irandom_range(1, 4); //random number
			audio_play_sound_on(global.main_emitter,asset_get_index("s_hit" + string(_a)), false, 1); //play audio
		}
}
#endregion
#region no longer attacking when attack is finished
if (is_attacking) {
	if (image_index >=  image_number-1) {
		is_attacking = false;
	}
}
#endregion
#region player health management
//player gets killed
if (hp <= 0) {
	//nothing yet
}
#endregion
#region cooldown management
strike_cooldown -= 1;


if (kb_cooldown <= 0) {
	speed = 0;	
}
kb_cooldown --;
#endregion