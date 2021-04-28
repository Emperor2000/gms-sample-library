with (obj_button) instance_destroy();
if (txt == "Create Server") {

instance_create_layer(0,0, "network_layer", obj_server);
instance_create_layer(20, 70, "network_layer", obj_host_decorator);
} 

if (txt == "Join Server") {
instance_create_layer(0,0, "Instances", obj_client);
instance_create_layer(260, 343, "Instances", obj_player);
}