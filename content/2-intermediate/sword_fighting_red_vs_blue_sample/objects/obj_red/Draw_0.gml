/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_yellow);
draw_self();
draw_set_color(c_white);
draw_healthbar(x-4,y-8,x+4,y-6,(hp/hp_max)*100,c_gray,c_red,c_red,-1,true,true);

if (flash_alpha > 0) {
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,flash_color,flash_alpha);
	
	shader_reset();
	
	
}