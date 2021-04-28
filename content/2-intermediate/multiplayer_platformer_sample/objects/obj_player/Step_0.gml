//platform physics

var rkey = keyboard_check(vk_right);
var lkey = keyboard_check(vk_left);
var jkey = keyboard_check(vk_up);

//check for ground
if (place_meeting(x, y+1, o_solid)) {
vsp = 0;

	//jumping
	if (jkey) {
		vsp = -jsp;
	}
		
		
	
	
} else {
	//Gravity
	if (vsp < 10) {
	vsp += grav;
	}
}

//Movement left
if (rkey) {
hsp = spd;	
}

if (lkey) {
hsp = -spd;	
}

//check for no movement
if ((!rkey && !lkey) || (rkey && lkey)) {
hsp = 0;	
}


//horizontal collisions
if (place_meeting(x+hsp, y, o_solid)) {
	while (!place_meeting(x+sign(hsp), y, o_solid)) {
		x += sign(hsp);	
	}
	hsp = 0;
}

//move horizontally
x += hsp;


//vertical collisions
if (place_meeting(x, y+vsp, o_solid)) {
	while (!place_meeting(x, y+sign(vsp), o_solid)) {
		y += sign(vsp);	
	}
	vsp = 0;
}


//move vertically
y += vsp;





//moving platform
if (instance_exists(o_moving_platform)) {
	var nearest_moving_platform = instance_nearest(id.x, id.y, o_moving_platform);
	if (point_distance(id.x, id.y, nearest_moving_platform.x, nearest_moving_platform.y) < 10) && (point_distance(id.x, id.y, id.x, nearest_moving_platform.y-10) < 15) {
		//id.x = nearest_moving_platform.x;
		//speed = hsp + nearest_moving_platform.speed;
	}
}



//moving platform
if (place_meeting(x, y+vsp, o_moving_platform)) {

	id.x = nearest_moving_platform.x;
	while (!place_meeting(x, y+sign(vsp), o_moving_platform)) {
		y += sign(vsp);	
	}
	vsp = 0;
	var instance = instance_place(x, y + 1, o_moving_platform);
	if (instance != noone) {
		is_on_platform = true;
		} else {
		is_on_platform = false;
		}
}









//animations
//while (vsp != 0) { jump = true; }

//face right
if (hsp > 0) { 
	if (has_rainbow_tie == false) {
sprite_index = suit_1_walk_anim_right;
	} else {
		sprite_index = s_client_rainbow_tie;
	}
} 
if (hsp < 0) {
	if (has_rainbow_tie == false) {
sprite_index = suit_1_walk_anim_left;	
	} else {
		sprite_index = s_client_rainbow_tie;
	}
}
if (hsp == 0) {
	if (has_rainbow_tie == false) {
sprite_index = s_suit_1_idle;	
	} else {
		sprite_index = s_client_rainbow_tie;
	}
}

//player death
if (dead && !playing_death_anim) {
sprite_index = suit_1_death2_anim;
playing_death_anim = true;
alarm[0] = 120;
}

if (dead && !activated) {
//sprite_index = suit_1_death2_anim;
sprite_index = s_hidden;
instance_create_layer(id.x, id.y, "Instances2", obj_player_dead);
activated = true;
alarm[0] = 120;
}

//if (dead) {
//sprite_index = s_hidden;
//alarm[1] = 60;
//}





if (dead) {
	if (keyboard_check(vk_space)) {
	//restart_level(o_level_variables.current_level);
	x = 260;
	y = 343;
	dead = false;
	}
}





