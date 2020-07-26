/// @description Turn on radio

if (instance_exists(obj_player)){
    if (point_distance(self.x, self.y, obj_player.x, obj_player.y) <= 35) {
    canPlay = true;
    } else {
    canPlay = false;
    }

}

///Controls

if (keyboard_check(ord("E")) && canPlay == true) {

//Prevent spamming the e key
countdown = true;
//Cooldown
alarm[0] = 60;

//If countdown not active
if (countdown == false) {
//Change channel
channel +=1;
    }
}




if (canPlay) {

if (channel == 1 ) {
//Audio goes here for channel 1
}

if (channel == 2) {
//Audio goes here for channel 2
}

if (channel == 3) {
//Audio goes here for channel 3
    }
}






///hit
if (hit == true) {
move_towards_point(xAngle, yAngle, force);
force-=0.5;

}

if (force < 0) {
force = 0;
}

///Clean object
if (force == 0 && hit == true) {

//cleanup , uncomment the line below if you want to cleanup
alarm[1] = 60;


}

