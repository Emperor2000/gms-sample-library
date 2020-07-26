//customization
subimg_count = 5; //The total number of different resource images, count starts at 0.
sway = false; //whether the object sways left and right
sway_multiplier = 1; //the amount the object sways
randomize(); //true random
//built in variables
image_index = irandom_range(0, subimg_count); //choose a random sub img (must be a whole number)
vspeed = 0; //defined by the chosen sub_img
image_alpha = 0; //fade in block
image_speed = 0; //do not change sub image because it is not an animation
//unique behaviour for each different sub image, results in different kinds of objects that can be customized.
switch (image_index) {
	
	//subimage 1
	case 0:
		vspeed = 1;
	break;
	
	//subimage 2
	case 1: 
		vspeed = 2;
	break;
	
	//subimage 3
	case 2:
		vspeed = 3;
	break;
	
	//subimage 4
	case 3:
		vspeed = 4;
	break;
	
	//subimage 5
	case 4:
		vspeed = 5;
	break;
	
	//subimage 6
	case 5:
		vspeed = 5;
		sway = true;
	break;

}
vspeed *=(obj_game.game_speed_multiplier);