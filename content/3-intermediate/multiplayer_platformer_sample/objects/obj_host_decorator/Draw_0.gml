draw_self();
image_xscale = 4;
image_yscale = 4;
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_text(x+100, y+40, "I shall be the host today!");
draw_text(x+100, y-30, "Connected: " + string(instance_number(obj_server_client)) + " ties");