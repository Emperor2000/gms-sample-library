/// @description Insert description here
// You can write your code in this editor
with (o_portal) {
rainbow_tie_count -=1;	
}
self.sprite_index = s_client_rainbow_tie;
self.has_rainbow_tie = true;
obj_client.send_tie_update_request = 1;