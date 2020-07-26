if (global.transform_battle_type == 0) {
	if (global.faction_amount == 2) {
		//if (instance_number(ship_parent) < ship_limit) {
			var blue_ship_amount = 0;
		
			var true_blue_ship_amount = instance_number(o_blue_fighter_laser_ship);
			for (i = instance_number(ship_parent); i < (ship_limit/2); i++) {
				alarm[0] = irandom(60);
				spawn_blue_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_blue_fighter_laser_ship);
				blue_ship_amount+=1;
			}
		
			for (i = 0; i < blue_ship_amount; i++) {
				alarm[1] = irandom(60);
				spawn_red_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_red_fighter_laser_ship);
			}
		
			if (instance_number(o_blue_fighter_laser_ship) == 0) {
				instance_destroy(ship_parent);
			}
			if (instance_number(o_red_fighter_laser_ship) == 0) {
				instance_destroy(ship_parent);
			}
		

		
		
	//	}
	}
	

	


	if (global.faction_amount == 3) {
		//if (instance_number(ship_parent) < ship_limit) {
			var blue_ship_amount = 0;
		
			var true_blue_ship_amount = instance_number(o_blue_fighter_laser_ship);
			for (i = instance_number(ship_parent); i < (ship_limit/3); i++) {
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_blue_fighter_laser_ship);
				blue_ship_amount+=1;
				spawn_blue_ship();
			}
		
			for (i = 0; i < blue_ship_amount; i++) {
				spawn_red_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_red_fighter_laser_ship);
			}
		
			for (i = 0; i < blue_ship_amount; i++) {
				spawn_purple_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_purple_fighter_laser_ship);
			}
		
			if (instance_number(o_blue_fighter_laser_ship) == 0 && (instance_number(o_red_fighter_laser_ship) == 0)) {
				instance_destroy(ship_parent);
			}
			if (instance_number(o_red_fighter_laser_ship) == 0 && (instance_number(o_purple_fighter_laser_ship) == 0)) {
				instance_destroy(ship_parent);
			}
		
			if (instance_number(o_purple_fighter_laser_ship) == 0 && (instance_number(o_blue_fighter_laser_ship) == 0)) {
				instance_destroy(ship_parent);
			}
		

		
		
	//	}
	}












	if (global.faction_amount == 4) {
		//if (instance_number(ship_parent) < ship_limit) {
			var blue_ship_amount = 0;
		
			var true_blue_ship_amount = instance_number(o_blue_fighter_laser_ship);
			for (i = instance_number(ship_parent); i < (ship_limit/4); i++) {
				spawn_blue_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_blue_fighter_laser_ship);
				blue_ship_amount+=1;
			}
		
			for (i = 0; i < blue_ship_amount; i++) {
				spawn_red_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_red_fighter_laser_ship);
			}
		
			for (i = 0; i < blue_ship_amount; i++) {
				spawn_purple_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_purple_fighter_laser_ship);
			}
		
			for (i = 0; i < blue_ship_amount; i++) {
				spawn_yellow_ship();
				//instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", o_yellow_fighter_laser_ship);
			}
		
			if (instance_number(o_blue_fighter_laser_ship) == 0 && (instance_number(o_red_fighter_laser_ship) == 0)) {
				instance_destroy(ship_parent);
			}
			if (instance_number(o_red_fighter_laser_ship) == 0 && (instance_number(o_purple_fighter_laser_ship) == 0)) {
				instance_destroy(ship_parent);
			}
		
			if (instance_number(o_purple_fighter_laser_ship) == 0 && (instance_number(o_blue_fighter_laser_ship) == 0)) {
				instance_destroy(ship_parent);
			}
	
			if (instance_number(o_yellow_fighter_laser_ship) == 0 && (instance_number(o_red_fighter_laser_ship) == 0) && (instance_number(o_blue_fighter_laser_ship) == 0)) {
			instance_destroy(ship_parent);
			}
		

		
		
	//	}
	}





}


	
	if (global.transform_enable_mothership == 1) {
		if (global.transform_battle_type == 0) {
		if (instance_number(o_green_capital_ship) < 1) {
		spawn_green_mothership();	
		}
	} else {
		if (already_spawned_mothership == 0) {
			if (instance_number(o_green_capital_ship) < 1) {
				spawn_green_mothership();	
				already_spawned_mothership = 1;
			}
		}
	}
}
	