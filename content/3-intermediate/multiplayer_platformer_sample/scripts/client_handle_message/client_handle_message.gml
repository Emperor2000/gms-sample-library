///client_handle_message(buffer);

var buffer = argument0;


while (true) {
	var message_id = buffer_read(buffer, buffer_u8);	
	
	switch(message_id) {
		
		case MESSAGE_JOIN:
		var client = buffer_read(buffer, buffer_u16);
		username = buffer_read(buffer, buffer_string);
		
		
		break;
		
		
		case MESSAGE_DISCONNECT: 
		var client = buffer_read(buffer, buffer_u16),
		temp_object = client_get_object(client);
		
		with (temp_object) {
			instance_destroy();
		}
		
		break;
		
		
		case MESSAGE_RAINBOW_TIE:
		
		var 
		client = buffer_read(buffer, buffer_u16),
		tie = buffer_read(buffer, buffer_u16);
		
				//if received a message from the client before.
		if (ds_map_exists(clientmap, string(client))) {
			var client_object = clientmap[? string(client)];
			//client_object.has_rainbow_tie = tie;
			client_object.has_rainbow_tie = tie - 1; //remove 1 because macro already existed.
			
		} else {
			var l = instance_create_layer(xx, yy, "network_layer", obj_other_client);
			clientmap[? string(client)] = l;
		}
		
		with(obj_server_client) {
			if (client_id != client_id_current) {
				network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer)); //get size of the send buffer.	
			}
		}
			
			break;
		

		
		
		
		
		case MESSAGE_MOVE:
		
		var 
		client = buffer_read(buffer, buffer_u16);
		xx = buffer_read(buffer, buffer_u16);
		yy = buffer_read(buffer, buffer_u16);
		
		
		//if received a message from the client before.
		if (ds_map_exists(clientmap, string(client))) {
			var client_object = clientmap[? string(client)];
			client_object.x = xx;
			client_object.y = yy;
			
		} else {
			var l = instance_create_layer(xx, yy, "network_layer", obj_other_client);
			clientmap[? string(client)] = l;
		}
		
		with(obj_server_client) {
			if (client_id != client_id_current) {
				network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer)); //get size of the send buffer.	
			}
		}
			
			break;
		
	}
	
	if (buffer_tell(buffer) == buffer_get_size(buffer)) {  //seek pos is advanced by bytes written	or read, this function provides current seek position for use in  other buffer functions. 
		break;	
	}
}