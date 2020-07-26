client_send_movement();

if (send_tie_update_request) {
client_send_rainbow_tie();	
}
send_tie_update_request = 0;


alarm[0] = UPDATE_SPEED;