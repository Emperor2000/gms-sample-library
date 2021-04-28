///client_disconnect()

ds_map_destroy(clientmap); //destroy clientmap for cleanup
network_destroy(socket);   //destroy socket.