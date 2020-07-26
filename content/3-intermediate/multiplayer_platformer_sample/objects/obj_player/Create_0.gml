firstjoin = true;
alarm[2] = 180;
audio_play_sound(game_theme, 1, true);

//movement
vsp = 0; //vertical speed
hsp = 0; //horizontal speed
jsp = 5; //jump speed
jump = false;
grav = .4;
spd = 1;


//dmg
dead = false;
hit = false;
activated = false;
walk_speed = 1;
run_speed = 2;

//death animation
playing_death_anim = false;


is_on_platform = false;

//resize window.
//display_set_gui_maximise(1, 1);


grav_modifier = 1;

//misc
has_rainbow_tie = false;