randomize();
if (place_object && place_object_time <= 0) { //when place_object equals true, we place an instance of a falling block.
	instance_create_layer(irandom_range(room_bound_min_x, room_bound_max_x), room_bound_y, "Instances", obj_item_falling); //create an instance of a falling object
	place_object = false;
	place_object_time += 180-place_object_decrementor;
	
	if (place_object_decrementor < 100) { //max allowed decrementor, time = 180 - decrementor.
	place_object_decrementor += 5;
	game_speed_multiplier *= 1.03;
	}
	
}

place_object_time -= 1;

//place_object_decrementor *= 1.1;


if (place_object_time <= 0) {
	place_object = true;	
}


//if there is no health left, change room.
if (player_health <= 0) {
	
	if (obj_controller.highscore < game_score) {
	obj_controller.highscore = game_score;
	ini_open("game.ini");
	ini_write_real("variables", "score", game_score);
	ini_close();
	}
	room_goto(room_gameover);	
}