/// @description Insert description here
// You can write your code in this editor
ds_items = ds_list_create(); //create array containing a list of soldiers in the army
target_x = x; //define x target to current pos, override with creation code
target_y = y; //define y target to current pos, override with creation code
army_count = 25; //define army count
for (i=0;i<=army_count;i++) { //loop through all instances in the army
var red_soldier = instance_create_layer(-20+x+(i*4) + irandom_range(-20, 20),-20+y+(i*5)+irandom_range(-20, 20),"Instances",obj_red_army_lod_low);
//create soldiers for each item in the loop
ds_list_insert(ds_items, i, red_soldier); //insert into the list

}
	show_debug_message(string(ds_items)); //show debug message for items in list

	for (j=0;j<ds_list_size(ds_items)-1; j++) {
	ds_list_find_value(ds_items,j).in_army = id; //update soldier's in_army value. (obj_red)
	}


alarm[0] = 10; //update every 10 steps