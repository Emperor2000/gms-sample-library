for (i = 0; i < irandom_range(5, 20); i++) {
instance_create_layer(x+random_range(-10, 10), y+random_range(-10, 10), "Projectiles2", o_sub_explosion);
}
instance_destroy();