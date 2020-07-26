#region take damage from bullets

if (canHurt) { //true is not required since it is a boolean, if it is true, it's already true, so you do not need to use =. In some examples it is included for clarity.
hp -= 15; //lower hp.
alarm[1] = 2; //cooldown for damage.
canHurt = false; //cant be damaged as long as cooldown is in effect.
image_index = spr_zombie_hit; //change hit image
image_speed = 1; //change image speed
}
#endregion