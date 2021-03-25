/// @description Insert description here
// You can write your code in this editor
if (target_x != -1 && target_y != -1) {
	if (x != target_x || y != target_y) {
		move_towards_point(target_x,target_y, 3);	
	} else {
		speed = 0;	
	}
}