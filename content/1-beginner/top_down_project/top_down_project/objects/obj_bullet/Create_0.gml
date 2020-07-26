/// @description Bullet creation
//Variables
bulletSpeed = 16;
image_angle = obj_player.image_angle;
//Movement towards mouse
move_towards_point(mouse_x+global.randomInaccuracy, mouse_y+global.randomInaccuracy,bulletSpeed);

//Reduce magazine 
global.magazine -=1;
//Reduce ammo
global.ammo -=1;
 
//Used for physics.
hit = false;

///Bullet sound
bulletSound = irandom(3);
switch(bulletSound) {
    case 0:
   //     audio_play_sound(snd_shot, 10, false);
        break;
    case 1:
   //     audio_play_sound(snd_shot2, 10, false);
        break;
    case 2:
   //     audio_play_sound(snd_shot3, 10, false);
        break;
} 

