/// @description Insert description here
// You can write your code in this editor


if (x != target_x && y != target_y) {
	for (t = 0; t < ds_list_size(ds_items)-1; t++) {
		if (instance_exists(ds_list_find_value(ds_items,t))) {
			with (ds_list_find_value(ds_items,t)) {
				if (in_army != 0 && in_army != false) {
			move_towards_point(in_army.target_x,in_army.target_y, 0.4);
			image_angle = point_direction(x,y,in_army.target_x, in_army.target_y)-90;
			} else {
				in_army.ds_list_delete(ds_items, t);
			}
			
			}
			ds_list_find_value(ds_items,t).sprite_index = spr_red_walk;
		}
	}
}




alarm[0] = 10; //run every 10 steps