/// @description Client networking
switch(async_load[? "type"]) {
	
	case network_type_data: //used when data packet is sent.
		client_handle_message(async_load[? "buffer"]);
	break;
	
	
}
