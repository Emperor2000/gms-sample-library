/// @description Insert description here
// You can write your code in this editor
draw_text(10, 20, "Health:");
draw_healthbar(100, 20, 250, 50, (hp / max_hp) * 100, c_black, c_red, c_green, 0, false, true);
draw_text(10, 300, "Move by pressing rmb and aiming with mouse");
draw_text(10, 400, "Fire with lmb");
if (debug_mode) {
   draw_text(10, 50, "FPS = " + string(fps));
   draw_text(10, 100, "Battle size: " + string(instance_number(ship_parent)) + " ships");
   draw_text(10, 150, "Explosions: " + string(instance_number(o_explosion) + instance_number(o_sub_explosion) + instance_number(o_sub_explosion2) + instance_number(o_sub_explosion3)));
   }