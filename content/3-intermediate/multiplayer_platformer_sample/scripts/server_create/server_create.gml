///server_create (port)

var 
port = argument0,
server = 0,
maxclients = 20;

server = network_create_server_raw(network_socket_tcp, port, maxclients); 
clientmap = ds_map_create(); //create arraylist to manage the clients.
client_id_counter = 0; //init counter at 0 on game start.


send_buffer = buffer_create(256, buffer_fixed, 1); //use buffer of fixed size.



if (server < 0)
show_error("Could not create server! :(", true);	


return server;



