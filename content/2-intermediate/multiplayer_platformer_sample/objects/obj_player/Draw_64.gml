if (firstjoin == true) {
	draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
//draw_text(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), "Dead");	

var _camera_x = 1920;
var _camera_y = 1080;


draw_text(_camera_x/2, _camera_y/2, "Run to get the rainbow tie!");
}


if (dead == true) {
draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
//draw_text(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), "Dead");	

var _camera_x = 1920;
var _camera_y = 1080;


draw_text(_camera_x/2, _camera_y/2, "Dead");
draw_text(_camera_x/2, _camera_y/1.8, "Press Spacebar to retry");
}