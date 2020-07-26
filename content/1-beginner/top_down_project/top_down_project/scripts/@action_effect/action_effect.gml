/// @description (Old DnD) - create a particle effect
/// @param kind particle kind
/// @param x	x position 
/// @param y	y position 
/// @param size	size
/// @param col	colour
/// @param below true if below, false if above

var xx = argument1;
var yy = argument2;
if (global.__argument_relative) {
	xx += x;
	yy += y;
}  // end if


if (argument5) {
	effect_create_below( argument0, xx, yy, argument3, argument4 );
} else {	
	effect_create_above( argument0, xx, yy, argument3, argument4 );
} // end if