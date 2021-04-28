if (global.requested_spawn_mechanics == "random") { //random
instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_yellow_fighter_laser_ship);
} else { //fixed
instance_create_layer(o_spawnzone_yellow.x+random_range(-20, 20), o_spawnzone_yellow.y+random_range(-20, 20), "Instances", o_yellow_fighter_laser_ship);
}