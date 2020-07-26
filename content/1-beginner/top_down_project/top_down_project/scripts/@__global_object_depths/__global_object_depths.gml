// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_light
global.__objectDepths[1] = 0; // obj_shader_yellow
global.__objectDepths[2] = -999; // obj_shader_dark
global.__objectDepths[3] = 0; // obj_shader_blue
global.__objectDepths[4] = 0; // obj_int_light
global.__objectDepths[5] = 0; // obj_int_light_yellow
global.__objectDepths[6] = 0; // obj_int_light_alarm
global.__objectDepths[7] = 0; // obj_menu
global.__objectDepths[8] = 0; // obj_button_small
global.__objectDepths[9] = 0; // obj_copyright_notice
global.__objectDepths[10] = 0; // obj_system
global.__objectDepths[11] = 0; // obj_main_controller
global.__objectDepths[12] = 0; // obj_enemy_spawn
global.__objectDepths[13] = 0; // obj_globalvars
global.__objectDepths[14] = 0; // obj_goscore
global.__objectDepths[15] = -15; // obj_timelapse
global.__objectDepths[16] = 0; // obj_restart
global.__objectDepths[17] = 0; // obj_log
global.__objectDepths[18] = 0; // obj_manager
global.__objectDepths[19] = 0; // obj_camera
global.__objectDepths[20] = 0; // obj_rotation_test
global.__objectDepths[21] = -2; // obj_solid
global.__objectDepths[22] = 0; // obj_wall
global.__objectDepths[23] = -10000; // obj_crosshair
global.__objectDepths[24] = -2; // obj_grenade
global.__objectDepths[25] = 0; // obj_bullet
global.__objectDepths[26] = -1; // obj_forcecamp
global.__objectDepths[27] = 10; // obj_blood1
global.__objectDepths[28] = 10; // obj_blood2
global.__objectDepths[29] = 10; // obj_blood3
global.__objectDepths[30] = 10; // obj_blood4
global.__objectDepths[31] = 0; // obj_explosion1
global.__objectDepths[32] = 0; // obj_bullet_ai
global.__objectDepths[33] = 0; // pathfind
global.__objectDepths[34] = 0; // ai_military
global.__objectDepths[35] = 0; // ai_friendly
global.__objectDepths[36] = 0; // ai_zombie
global.__objectDepths[37] = 0; // ai_zombie_corpse
global.__objectDepths[38] = 0; // ai_civilian
global.__objectDepths[39] = 0; // obj_enemy
global.__objectDepths[40] = 0; // obj_player
global.__objectDepths[41] = 1000; // obj_radio
global.__objectDepths[42] = 1000; // obj_cash_register
global.__objectDepths[43] = 0; // obj_dialogue


global.__objectNames[0] = "obj_light";
global.__objectNames[1] = "obj_shader_yellow";
global.__objectNames[2] = "obj_shader_dark";
global.__objectNames[3] = "obj_shader_blue";
global.__objectNames[4] = "obj_int_light";
global.__objectNames[5] = "obj_int_light_yellow";
global.__objectNames[6] = "obj_int_light_alarm";
global.__objectNames[7] = "obj_menu";
global.__objectNames[8] = "obj_button_small";
global.__objectNames[9] = "obj_copyright_notice";
global.__objectNames[10] = "obj_system";
global.__objectNames[11] = "obj_main_controller";
global.__objectNames[12] = "obj_enemy_spawn";
global.__objectNames[13] = "obj_globalvars";
global.__objectNames[14] = "obj_goscore";
global.__objectNames[15] = "obj_timelapse";
global.__objectNames[16] = "obj_restart";
global.__objectNames[17] = "obj_log";
global.__objectNames[18] = "obj_manager";
global.__objectNames[19] = "obj_camera";
global.__objectNames[20] = "obj_rotation_test";
global.__objectNames[21] = "obj_solid";
global.__objectNames[22] = "obj_wall";
global.__objectNames[23] = "obj_crosshair";
global.__objectNames[24] = "obj_grenade";
global.__objectNames[25] = "obj_bullet";
global.__objectNames[26] = "obj_forcecamp";
global.__objectNames[27] = "obj_blood1";
global.__objectNames[28] = "obj_blood2";
global.__objectNames[29] = "obj_blood3";
global.__objectNames[30] = "obj_blood4";
global.__objectNames[31] = "obj_explosion1";
global.__objectNames[32] = "obj_bullet_ai";
global.__objectNames[33] = "pathfind";
global.__objectNames[34] = "ai_military";
global.__objectNames[35] = "ai_friendly";
global.__objectNames[36] = "ai_zombie";
global.__objectNames[37] = "ai_zombie_corpse";
global.__objectNames[38] = "ai_civilian";
global.__objectNames[39] = "obj_enemy";
global.__objectNames[40] = "obj_player";
global.__objectNames[41] = "obj_radio";
global.__objectNames[42] = "obj_cash_register";
global.__objectNames[43] = "obj_dialogue";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for