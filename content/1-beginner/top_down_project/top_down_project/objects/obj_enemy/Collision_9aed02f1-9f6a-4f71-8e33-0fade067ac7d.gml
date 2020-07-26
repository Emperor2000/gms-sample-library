/*if (canHurt) {
health -=50;
if (health <= 0) {
instance_destroy();
    }
}*/


if (canHurt) {
hp -= 20;
alarm[1] = 2;
canHurt = false;
}

/* */
/*  */
