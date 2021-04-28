/// @description Insert description here
// You can write your code in this editor
#region draw sprite
draw_self(); //draw the player, ALWAYS include in draw event if you have a sprite
#endregion
#region draw healthbar
draw_healthbar(x-5,y-6,x+5,y-4,(hp/hp_max)*100, c_gray, c_blue, c_blue, -1,true,true); //draw healthbar
#endregion
#region draw flash
if (flash_alpha > 0) { //set shader
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,flash_color,flash_alpha); //draw sprite ext with flash color and flash alpha
	
	shader_reset(); //reset shader after drawing
	
	
}
#endregion