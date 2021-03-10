/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha); //draw with alpha
draw_set_color(color); //draw with color
draw_text_ext_transformed_color(x,y,string(damage_amount),0,200,scale,scale,image_angle+irandom_range(-1,1),color,color,color,color,alpha);
draw_set_color(c_white); //reset color to default
draw_set_alpha(1); //reset alpha to default