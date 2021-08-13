function macros() {
#macro GAME_TITLE "Sonic: Hedgehog Paradise"
#macro GAME_VER "REV. 2021"
#macro DEV_MODE false
#macro SHOW_INTRO_DEMO false
#macro SHOW_DEMO false
#macro SAGE_INTRO_DEMO false
#macro SAGE_DEMO false
#macro FIRST_ROOM rm_tests
#macro DIS_WIDTH obj_display_manager.display_width
#macro DIS_HEIGHT obj_display_manager.display_height
#macro DIS_ZOOM obj_display_manager.zoom
#macro ID_WIDTH obj_display_manager.ideal_width
#macro ID_HEIGHT obj_display_manager.ideal_height
#macro HUD_TYPE 0
#macro SCREENSHOT_FOLDER working_directory + "Captures/"
#macro DIF_VERY_EASY -2
#macro DIF_EASY -1
#macro DIF_NORMAL 0
#macro DIF_HARD 1
#macro DIF_VERY_HARD 2
#macro ALLOW_HOMING true
#macro ALLOW_W_JUMP false
#macro COL_MAIN 1
#macro COL_MAIN_OBJECT 2
#macro COL_TOP 3
#macro COL_TOP_OBJECT 4
#macro COL_BOTTOM 5
#macro COL_BOTTOM_OBJECT 6
#macro COL_LEFT 7
#macro COL_LEFT_OBJECT 8
#macro COL_LEFT_EDGE 9
#macro COL_LEFT_LIMITER 10
#macro COL_RIGHT 11
#macro COL_RIGHT_OBJECT 12
#macro COL_RIGHT_EDGE 13
#macro COL_RIGHT_LIMITER 14
#macro COL_SLOPE 15
#macro COL_SLOPE_PLATFIX 16
#macro COL_EDGE_LINE 17
#macro MASK_MAIN spr_player_mask_main
#macro MASK_LARGE spr_player_mask_large
#macro MASK_BIG spr_player_mask_big
#macro MASK_MID spr_player_mask_mid
#macro MASK_SMALL spr_player_mask_small
#macro MASK_DOT spr_player_mask_dot
#macro MASK_LINES spr_player_mask_lines
#macro MASK_THINBLOCK spr_player_mask_thin_block
#macro MASK_EDGE_LINE spr_player_mask_edge_line
#macro STATE_DEFAULT 1
#macro STATE_LOOKUP 2
#macro STATE_CROUCH 3
#macro STATE_JUMP 4
#macro STATE_ROLL 5
#macro STATE_SPINDASH 6
#macro STATE_SKID 7
#macro STATE_GRAB 8
#macro STATE_SPRING 9
#macro STATE_CORKSCREW 10
#macro STATE_CORKSCREW_ROLL 11
#macro STATE_WOBBLE 12
#macro STATE_PUSH 13
#macro STATE_BREATH 14
#macro STATE_FLY 15
#macro STATE_FLYDROP 16
#macro STATE_GLIDE 17
#macro STATE_GLIDE_DROP 18
#macro STATE_SLIDE 19
#macro STATE_CLIMB 20
#macro STATE_HURT 21
#macro STATE_DEATH 22
#macro STATE_HOMING 23
#macro STATE_STOMP 24
#macro STATE_W_JUMP 25
#macro STATE_STOMP_LAND 26
#macro input_action input_a
#macro input_special input_b
#macro input_action_pressed input_a_pressed
#macro input_special_pressed input_b_pressed
#macro input_action_released input_a_released
#macro input_special_released input_b_released
#macro CHAR_NONE 0
#macro CHAR_SONIC 1
#macro CHAR_TAILS 2
#macro CHAR_KNUX 3
#macro CHAR_SHAD 4
#macro CHAR_BUN 5
#macro CHAR_GOR 6
#macro Showcase_Demo:GAME_VER "REV. SHOWCASE DEMO"
#macro Showcase_Demo:SHOW_INTRO_DEMO true
#macro Showcase_Demo:SHOW_DEMO true
#macro Showcase_Demo:FIRST_ROOM rm_tests
#macro SAGE_Demo:GAME_VER "REV. SAGE Demo"
#macro SAGE_Demo:SAGE_INTRO_DEMO true
#macro SAGE_Demo:SAGE_DEMO true
#macro SAGE_Demo:FIRST_ROOM rm_tests
#macro SAGE_Demo:HUD_TYPE 0
#macro Development_Build:GAME_VER "REV. Development Version"
#macro Development_Build:DEV_MODE true
#macro Development_Build:FIRST_ROOM rm_tests
#macro Development_Build:HUD_TYPE 1
#macro VIEW_X __view_get(e__VW.XView, 0)
#macro VIEW_Y __view_get(e__VW.YView, 0)

}
