/// @description Variables
image_speed = 0;
image_index = 0;
global.firing = 0;
global.hp = 100;
global.maxhp = 100;
xstep = 0;
walkingSpeed = 6;
aggroRange = 240;
canDmg = true;

//Initialize Camera
instance_create(x,y,obj_camera);

//Weapon
canFire = 1;
cooldown = 5;

//Random inaccuracy for bullets.
global.randomInaccuracy = 0;



//ammo
global.ammo = 999;
global.magazine = 30;

//movement
walkingSpeed = 4;
checkMovement = x + y;



//hurt
hurtSprite = 0;

