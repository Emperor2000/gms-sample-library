/// @description movement by dragging

var _selected_id = instance_position(mouse_x, mouse_y, obj_plane);
if (_selected_id != -4) { //attempted to select
	if (mouse_check_button(mb_left)) {
		selected_id = _selected_id;
		is_selected = true;
	} else {
		selected_id = -4;
		is_selected = false;	
	}
} 

if (is_selected) {
	if (selected_id != -4) {
		selected_id.x = mouse_x;
		selected_id.y = mouse_y;
	}
}