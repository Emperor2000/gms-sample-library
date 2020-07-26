if (global.requested_spawn_mechanics == "random") { //random
instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_blue_fighter_laser_ship);
} else { //fixed
instance_create_layer(o_spawnzone_blue.x+random_range(-40, 40), o_spawnzone_blue.y+random_range(-40, 40), "Instances", o_blue_fighter_laser_ship);
}