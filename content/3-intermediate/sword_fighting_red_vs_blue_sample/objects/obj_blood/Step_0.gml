/// @description Insert description here
// You can write your code in this editor

#region image alpha management
image_alpha -= 0.01; 
if (image_alpha <= 0) {
	show_debug_message(sprite_index);
	instance_destroy();	
}
#endregion
#region speed management, slow progressively / linear
if (speed > 0) {
speed -= 0.001;
}
#endregion