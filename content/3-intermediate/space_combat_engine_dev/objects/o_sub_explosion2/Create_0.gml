image_angle = irandom(360);
hspeed = random_range(-0.3, 0.3);
vspeed = random_range(-0.3, 0.3);
alarm[0] = irandom_range(1, 15);




for (i = 0; i < irandom_range(2, 10); i++) {
instance_create_layer(x+random_range(-10, 10), y+random_range(-10, 10), "Projectiles2", o_sub_explosion3);
}