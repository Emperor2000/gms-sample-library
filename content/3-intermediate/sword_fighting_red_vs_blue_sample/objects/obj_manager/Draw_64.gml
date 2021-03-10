/// @description Insert description here
// You can write your code in this editor
//debug

if (debug) {
	draw_text(25, 5, "NPC Count: " + string(instance_number(obj_npc)));
	draw_text(25, 25, "Crowd system NPC Count Red: " + string(instance_number(obj_red_army_lod_low)));
	draw_text(25, 45, "Crowd system NPC Count Blue: " + string(instance_number(obj_blue_army_lod_low)));
	draw_text(25, 65, "Framerate: " + string(fps_real));
}