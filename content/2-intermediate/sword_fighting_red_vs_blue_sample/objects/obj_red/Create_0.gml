/// @description Insert description here
// You can write your code in this editor
hp = 30;
hp_max = hp;
move_speed = 0.5+random_range(-0.2, 0.2);
target = -1;
attacking = false;
attack_distance = 50;
hit_range = 30;
attack_cooldown_init = 60;
attack_cooldown = attack_cooldown_init;
apply_kb = false;
image_speed = 0.2;
hit_by_player = false;
hit_by_player_cooldown = 10;
hit_by_player_trigger = false;


flash_alpha = 0;
flash_color = c_white;
play_walk_audio = false;
walk_audio_pointer = -1;
alarm[1] = 60;
alarm[2] = 20;



in_army = false;


emitter = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_emitter_falloff(emitter,50,150,0.1);
