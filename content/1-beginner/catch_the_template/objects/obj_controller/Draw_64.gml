/// @description Insert description here
// You can write your code in this editor
if (room == room_menu) {
	draw_set_halign(fa_center);
	draw_text((room_width/2)-15, room_height/6, "highscore: " + string(highscore));	
	draw_set_halign(fa_left);
}