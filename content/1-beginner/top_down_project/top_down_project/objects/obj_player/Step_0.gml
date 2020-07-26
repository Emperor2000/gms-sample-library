/// @description Death and damage
//Player Death
if global.hp <= 0
{
    room_goto(r_gameover);
}

//Rotate player to mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);

/*
//Spawn hurt decal for the following health points.
if (global.hp ==90 ) {
instance_create(self.x, self.y, obj_blood1);
}

if (global.hp ==60 ) {
instance_create(self.x, self.y, obj_blood2);
}

if (global.hp ==40 ) {
instance_create(self.x, self.y, obj_blood1);
}

if (global.hp ==20) {
instance_create(self.x, self.y, obj_blood3);
}

if (global.hp ==10) {
instance_create(self.x, self.y, obj_blood3);
}
*/




/* */
///Player movement
var xDirection, yDirection;
xDirection  = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"));


//Apply dirs to x and y
x+= xDirection * walkingSpeed;
y+=yDirection * walkingSpeed;


//Change sprite when moving


/* */
///Combat visuals
if (mouse_check_button(mb_left)) && sprite_index != spr_player_firing {
    sprite_index = spr_player_firing;
    image_index = 0;
    image_speed = 1;
    }
if (!mouse_check_button(mb_left))  && sprite_index == spr_player_firing{
    sprite_index = spr_player_idle;
    image_index = 0;
    image_speed = 1;
}

/* */
///Firing

if (mouse_check_button(mb_left) && (canFire == 1)) {
    instance_create(self.x, self.y, obj_bullet);
    alarm[0] = cooldown;
    canFire = 0;
}

/* */
///inaccuracy
//Changes every step.
global.randomInaccuracy = random_range(-10, 10);

/* */
/*  */
