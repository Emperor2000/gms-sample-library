/// @description For documentation review obj_red_small_army_manager
ds_items = ds_list_create();
target_x = x;
target_y = y;
army_count = 25;
for (i=0;i<=army_count;i++) {
var red_soldier = instance_create_layer(-20+x+(i*4) + irandom_range(-20, 20),-20+y+(i*5)+irandom_range(-20, 20),"Instances",obj_red_army_lod_low);
ds_list_insert(ds_items, i, red_soldier);

}
	show_debug_message(string(ds_items));

	for (j=0;j<ds_list_size(ds_items)-1; j++) {
	ds_list_find_value(ds_items,j).in_army = id;
	}


alarm[0] = 10; //update every 10 steps