///server_handle_disconnect(socket_id);
var socket_id = argument0;


buffer_seek(send_buffer, buffer_seek_start, 0);
buffer_write(send_buffer, buffer_u8, MESSAGE_DISCONNECT);
buffer_write(send_buffer, buffer_u16, clientmap[? string(socket_id)].client_id);

with (clientmap[? (string(socket_id))]) {
	instance_destroy();
}

ds_map_delete(clientmap, string(socket_id)); //Delete the disconnected client's socket id from the array

with (obj_server_client) {
	network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer));	
}