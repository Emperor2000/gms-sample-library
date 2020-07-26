/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	var button_x = x + sprite_width * value;	
	var button_y = y;
	var button_radius = sprite_get_width(s_slider_knob) / 2;
	if (point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius)) {
	selected = true;	
	}
}



if (!mouse_check_button(mb_left)) {
	selected = false;	
}

if (selected) {
	value = clamp((mouse_x-x) / sprite_width, 0, max_value);
	event_user(0);
	global.transform_enable_mothership = 0 + round(value*1);		//multiplier for battle type, only 2 options.
}



if (global.transform_enable_mothership == 1) {
	global.enable_mothership = "Enable";	//update variables
}

if (global.transform_enable_mothership == 0) {
	global.enable_mothership = "Disable"; //update variables
}