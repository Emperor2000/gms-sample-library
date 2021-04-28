///client_send_rainbow_tie()

buffer_seek(send_buffer, buffer_seek_start, 0);
buffer_write(send_buffer, buffer_u8, MESSAGE_RAINBOW_TIE);
buffer_write(send_buffer, buffer_u16, obj_player.has_rainbow_tie);

network_send_raw(socket, send_buffer, buffer_tell(send_buffer));