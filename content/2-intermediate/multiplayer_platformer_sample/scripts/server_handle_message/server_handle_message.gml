///server_handle_message(socket_id, buffer);
var
socket_id = argument0,
buffer = argument1,
client_object = clientmap[? string(socket_id)],
client_id_current = clientmap[? string(socket_id)].client_id; //take instance of client_id

while (true) {
	var message_id = buffer_read(buffer, buffer_u8);	
	
	
	
	switch(message_id) {
			
			case MESSAGE_JOIN:
			username = buffer_read(buffer, buffer_string);
			client_object.name = username;
			
			buffer_seek(send_buffer, buffer_seek_start, 0);
			buffer_write(send_buffer, buffer_u8, MESSAGE_JOIN);
			buffer_write(send_buffer, buffer_u16, client_id_current);
			buffer_write(send_buffer, buffer_string, username);
			
			//send new name to all other clients
			with(obj_server_client) {
				if (client_id != client_id_current) {
					network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer));	
				}
			}
			
			
			//send client name of all other clients
			with (obj_server_client) {
				if (client_id != client_id_current) {
					buffer_seek(send_buffer, buffer_seek_start, 0);
					buffer_write(send_buffer, buffer_u8, MESSAGE_JOIN);
					buffer_write(send_buffer, buffer_u16, client_id);
					buffer_write(send_buffer, buffer_string, name);	
					network_send_raw(socket_id, other.send_buffer, buffer_tell(other.send_buffer));
				}
			}
			
			break;
		
		
		
		
		
		
		
		
		
			case MESSAGE_RAINBOW_TIE:
			var tie = buffer_read(buffer, buffer_u16); //y pos can also exceed 255, so we use a 16 bit buffer.
			
			//fill buffer in order
			buffer_seek(send_buffer, buffer_seek_start, 0); //if buffer is full it could crash so we reset buffer start to 0
			buffer_write(send_buffer, buffer_u8, MESSAGE_RAINBOW_TIE);
			buffer_write(send_buffer, buffer_u16, client_id_current);
			buffer_write(send_buffer, buffer_u16, tie);
			
			//send buffer to server clients
			with(obj_server_client){
				if (client_id != client_id_current) { //only send to other clients, not the client that sent the info.
					network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer)); //sending 7 bytes
				}
			}
			
			break;
		
		
		
		
		case MESSAGE_MOVE:
			var xx = buffer_read(buffer, buffer_u16); //x pos can exceed 255 so we use a 16 bit buffer.
			var yy = buffer_read(buffer, buffer_u16); //y pos can also exceed 255, so we use a 16 bit buffer.
			
			//fill buffer in order
			buffer_seek(send_buffer, buffer_seek_start, 0); //if buffer is full it could crash so we reset buffer start to 0
			buffer_write(send_buffer, buffer_u8, MESSAGE_MOVE);
			buffer_write(send_buffer, buffer_u16, client_id_current);
			buffer_write(send_buffer, buffer_u16, xx);
			buffer_write(send_buffer, buffer_u16, yy);
			
			//send buffer to server clients
			with(obj_server_client){
				if (client_id != client_id_current) { //only send to other clients, not the client that sent the info.
					network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer)); //sending 7 bytes
				}
			}
			
			break;
		
	}
	
	if (buffer_tell(buffer) == buffer_get_size(buffer)) {  //seek pos is advanced by bytes written	or read, this function provides current seek position for use in  other buffer functions. 
		break;	
	}
}