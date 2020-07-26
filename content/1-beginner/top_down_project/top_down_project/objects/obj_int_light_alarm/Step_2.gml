size = 128;
draw_set_blend_mode(bm_subtract);
surface_set_target(light);
draw_ellipse_color(x-size/2-__view_get( e__VW.XView, 0 ),y-size/2-__view_get( e__VW.YView, 0 ),x+size/2-__view_get( e__VW.XView, 0 ),y+size/2-__view_get( e__VW.YView, 0 ),c_red,c_black,false);

surface_reset_target();
draw_set_blend_mode(bm_normal);

