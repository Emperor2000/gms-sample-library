draw_self(); //draw self is required to draw it's sprite if you use a draw event.

#region draw healthbar
//configuration for healthbar position and size.
var _margin_x_left = -20;
var _margin_y_top = -20;
var _margin_x_right = 5;
var _margin_y_bottom = -15;

draw_healthbar(self.x+_margin_x_left, self.y+_margin_y_top, self.x+_margin_x_right, self.y+_margin_y_bottom, hp, c_black, c_red, c_lime, 0, true, true); //draw a healthbar above the sprite.
#endregion.
