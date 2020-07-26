///server_handle_connect(socket_id);

var socket_id = argument0;

l = instance_create_layer(0,0, "network_layer", obj_server_client) //Create a representation of the client on the server.
l.socket_id = socket_id; //socket_id's are random, can be any number. use client_id that allows looping through all clients.
l.client_id = client_id_counter++;

if (client_id_counter >= 65000) {
	client_id_counter = 0; //prevent integer overflow.	
}


clientmap[? string(socket_id)] = l; //add server_client_representation to the array of socket id's.