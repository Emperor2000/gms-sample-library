/// @description Insert description here
// You can write your code in this editor
var _selected_id = -4;

if ( mouse_check_button_pressed(mb_left)) {
_selected_id = instance_position(mouse_x, mouse_y, obj_plane);
	//selected!
	if (_selected_id != -4) {
	instance_selected = _selected_id;
	}
}



if (instance_selected != -4 && mouse_check_button_pressed(mb_right)) {
	//move order
	instance_selected.target_x = mouse_x;
	instance_selected.target_y = mouse_y;
}