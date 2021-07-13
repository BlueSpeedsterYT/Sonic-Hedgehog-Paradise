function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // par_character
	global.__objectDepths[1] = 0; // obj_camera
	global.__objectDepths[2] = 0; // obj_player
	global.__objectDepths[3] = 0; // par_solid
	global.__objectDepths[4] = 0; // par_solid_no_angle
	global.__objectDepths[5] = 0; // par_platform
	global.__objectDepths[6] = 0; // par_platform_no_angle
	global.__objectDepths[7] = 0; // par_obstacles
	global.__objectDepths[8] = 0; // par_layer0
	global.__objectDepths[9] = 0; // par_layer0_no_angle
	global.__objectDepths[10] = 0; // par_layer1
	global.__objectDepths[11] = 0; // par_layer1_no_angle
	global.__objectDepths[12] = -999999; // obj_layer_switch
	global.__objectDepths[13] = -999999; // obj_layer_switch_0
	global.__objectDepths[14] = -999999; // obj_layer_switch_1
	global.__objectDepths[15] = -999999; // obj_loop_switch_0
	global.__objectDepths[16] = -999999; // obj_loop_switch_1
	global.__objectDepths[17] = 0; // obj_collision_1
	global.__objectDepths[18] = 0; // obj_collision_2
	global.__objectDepths[19] = 0; // obj_collision_3
	global.__objectDepths[20] = 0; // obj_collision_4
	global.__objectDepths[21] = 0; // obj_collision_5
	global.__objectDepths[22] = 0; // obj_collision_6
	global.__objectDepths[23] = 0; // obj_layer0_1
	global.__objectDepths[24] = 0; // obj_layer0_2
	global.__objectDepths[25] = 0; // obj_layer1_1
	global.__objectDepths[26] = 0; // obj_layer1_2
	global.__objectDepths[27] = 0; // obj_platform_1
	global.__objectDepths[28] = 0; // ctr_hud
	global.__objectDepths[29] = 0; // obj_display_manager
	global.__objectDepths[30] = 0; // ctr_audio
	global.__objectDepths[31] = 0; // ctr_level
	global.__objectDepths[32] = 0; // obj_dummy_effect
	global.__objectDepths[33] = 0; // obj_background_controller
	global.__objectDepths[34] = 0; // obj_checkpoint
	global.__objectDepths[35] = -80; // obj_checkpoint_info
	global.__objectDepths[36] = 0; // obj_checkpoint_spawner
	global.__objectDepths[37] = 10; // obj_ring
	global.__objectDepths[38] = 10; // obj_ring_magnetized
	global.__objectDepths[39] = 0; // obj_disclaimer_controller
	global.__objectDepths[40] = 0; // obj_demo_intro
	global.__objectDepths[41] = 0; // obj_title_controller
	global.__objectDepths[42] = 0; // obj_menu_controller
	global.__objectDepths[43] = 0; // obj_settings
	global.__objectDepths[44] = -99999999; // obj_fade_snapshot
	global.__objectDepths[45] = -99999999; // obj_fade_in_white
	global.__objectDepths[46] = -99999999; // obj_fade_in
	global.__objectDepths[47] = -99999999; // obj_fade_in_slice
	global.__objectDepths[48] = -99999999; // obj_fade_in_slice_white
	global.__objectDepths[49] = -99999999; // obj_fade_to_slice
	global.__objectDepths[50] = -99999999; // obj_fade_to_slice_white
	global.__objectDepths[51] = -99999999; // obj_fade_to
	global.__objectDepths[52] = -99999999; // obj_fade_to_white


	global.__objectNames[0] = "par_character";
	global.__objectNames[1] = "obj_camera";
	global.__objectNames[2] = "obj_player";
	global.__objectNames[3] = "par_solid";
	global.__objectNames[4] = "par_solid_no_angle";
	global.__objectNames[5] = "par_platform";
	global.__objectNames[6] = "par_platform_no_angle";
	global.__objectNames[7] = "par_obstacles";
	global.__objectNames[8] = "par_layer0";
	global.__objectNames[9] = "par_layer0_no_angle";
	global.__objectNames[10] = "par_layer1";
	global.__objectNames[11] = "par_layer1_no_angle";
	global.__objectNames[12] = "obj_layer_switch";
	global.__objectNames[13] = "obj_layer_switch_0";
	global.__objectNames[14] = "obj_layer_switch_1";
	global.__objectNames[15] = "obj_loop_switch_0";
	global.__objectNames[16] = "obj_loop_switch_1";
	global.__objectNames[17] = "obj_collision_1";
	global.__objectNames[18] = "obj_collision_2";
	global.__objectNames[19] = "obj_collision_3";
	global.__objectNames[20] = "obj_collision_4";
	global.__objectNames[21] = "obj_collision_5";
	global.__objectNames[22] = "obj_collision_6";
	global.__objectNames[23] = "obj_layer0_1";
	global.__objectNames[24] = "obj_layer0_2";
	global.__objectNames[25] = "obj_layer1_1";
	global.__objectNames[26] = "obj_layer1_2";
	global.__objectNames[27] = "obj_platform_1";
	global.__objectNames[28] = "ctr_hud";
	global.__objectNames[29] = "obj_display_manager";
	global.__objectNames[30] = "ctr_audio";
	global.__objectNames[31] = "ctr_level";
	global.__objectNames[32] = "obj_dummy_effect";
	global.__objectNames[33] = "obj_background_controller";
	global.__objectNames[34] = "obj_checkpoint";
	global.__objectNames[35] = "obj_checkpoint_info";
	global.__objectNames[36] = "obj_checkpoint_spawner";
	global.__objectNames[37] = "obj_ring";
	global.__objectNames[38] = "obj_ring_magnetized";
	global.__objectNames[39] = "obj_disclaimer_controller";
	global.__objectNames[40] = "obj_demo_intro";
	global.__objectNames[41] = "obj_title_controller";
	global.__objectNames[42] = "obj_menu_controller";
	global.__objectNames[43] = "obj_settings";
	global.__objectNames[44] = "obj_fade_snapshot";
	global.__objectNames[45] = "obj_fade_in_white";
	global.__objectNames[46] = "obj_fade_in";
	global.__objectNames[47] = "obj_fade_in_slice";
	global.__objectNames[48] = "obj_fade_in_slice_white";
	global.__objectNames[49] = "obj_fade_to_slice";
	global.__objectNames[50] = "obj_fade_to_slice_white";
	global.__objectNames[51] = "obj_fade_to";
	global.__objectNames[52] = "obj_fade_to_white";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
