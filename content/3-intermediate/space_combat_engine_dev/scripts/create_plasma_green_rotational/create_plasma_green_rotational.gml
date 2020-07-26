	var _plasma = instance_create_layer(x, y, "ALWAYS_ON_TOP", PLASMA_GREEN);
	_plasma.speed = 5 + irandom_range(-2, 3);
	_plasma.image_angle = irandom(360);
	_plasma.direction += image_angle*5 + global.PLASMA_SPREAD*5;
	
	
	//var _plasma2 = instance_create_layer(x, y, "ALWAYS_ON_TOP", PLASMA_GREEN);
	//_plasma.speed = -5 + irandom_range(-3, 2);
	//_plasma.image_angle = irandom(360);
	//_plasma.direction += image_angle*5;