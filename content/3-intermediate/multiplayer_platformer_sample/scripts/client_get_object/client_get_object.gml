///client_get_object(client_id)
///@param client_id

var client_id = argument0;


if (ds_map_exists(clientmap, string(client_id))) {
	var client_object = clientmap[? string(client_id)];
	return client_object;
} else {
	var l = instance_create_layer(0, 0, "network_layer", obj_other_client);
	clientmap[? string(client_id)] = l;
	return l;
}



