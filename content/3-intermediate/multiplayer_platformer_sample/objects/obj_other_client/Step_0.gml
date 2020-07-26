if (speed == 0) {
//idle anim	
sprite_index = s_client_idle;
}

if (hspeed > 0) {
//walk anim	right
sprite_index = s_client_walk_right;
}
if (hspeed < 0) {
sprite_index = s_client_walk_left;	
}


if (has_rainbow_tie == 1 || has_rainbow_tie == 2) {
	sprite_index = s_client_rainbow_tie;
}