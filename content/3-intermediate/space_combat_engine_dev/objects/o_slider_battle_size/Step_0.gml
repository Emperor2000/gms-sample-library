/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	var button_x = x + sprite_width * value;	//button xpos
	var button_y = y;							//button ypos
	var button_radius = sprite_get_width(s_slider_knob) / 2;
	if (point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius)) {	//Player can edit slider by dragging over it
	selected = true;											//Update boolean selected
	}
}



if (!mouse_check_button(mb_left)) {
	selected = false;											//If the player does not have the mouse button pressed, he does not select the knob.
}

if (selected) {		
	value = clamp((mouse_x-x) / sprite_width, 0, max_value);	//Make sure that the knob can't leave the slider area + update knob location based on mouse position
	event_user(0);
	global.combat_size =/* 1 + */ round(value*value_ship_amount);				//multiplier for fleet size, change the multiplier to edit the max amount of ships
}

