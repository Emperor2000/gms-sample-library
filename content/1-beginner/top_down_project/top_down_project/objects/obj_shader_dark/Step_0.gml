if (surface_exists(light)) {
surface_set_target(light);
draw_set_color(c_ltgray);
draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),false)
surface_reset_target();
}
if (!surface_exists(light))
{
    light = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
}

