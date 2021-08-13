/// @description scr_game_init
function scr_game_init() {

	 // Stuff...
	    global.firstRoom        = FIRST_ROOM;
	    global.HUDStyle         = HUD_TYPE;
    
	    global.DemoSAGE         = SAGE_DEMO;
	    global.DemoShowcase     = SHOW_DEMO;
    
	    global.DebugMode        = DEV_MODE;
    
	    global.BGM_VOL          = 1;
	    global.SFX_VOL          = 1;
		
		game_set_speed(60, gamespeed_fps);
    
	    //global.HUD_Styles       = HUD_TYPE;
    
	 // Keyboard input:
	    global.key_up           = vk_up;
	    global.key_down         = vk_down;
	    global.key_left         = vk_left;
	    global.key_right        = vk_right;
	    global.key_a            = ord("X");
	    global.key_b            = ord("C");
	    global.key_x            = ord("Z");
	    global.key_y            = ord("S");
	    global.key_enter        = vk_enter;
    
	 // Sprite Based Fonts:
	    global.font_debug       = font_add_sprite(fnt_debug, ord("!"), false, 0);
	    global.font_default     = font_add_sprite(fnt_default, ord("!"), true, 0);
	    global.font_hud         = font_add_sprite(fnt_hud, ord("0"), false, -1);
		global.font_title_card  = font_add_sprite(fnt_title_card, ord("A"), true, 0);
		global.font_dev			= font_add_sprite(fnt_dev_menu, ord("!"), true, 0);
	
	 // Difficulty:
	    global.gameDifficult    = DIF_NORMAL;
    
	 // Level:
	    global.zoneName               = ""; // The name of the zone.
	    global.zoneAct                =  1; // The act of the zone. (1 to 2)
	    global.playRings              =  0;
	    //global.zone_water_position    = -1; // The water surface position. (-1 deactivates water)
	    //global.death_trigger_position = -1; // Position used to kill the character.       
	    global.add_time				  =  0; // Can we add to the timers?
	    global.game_time			  =  0; // Game Timer.
	    global.object_time			  =  0; // Object Timer. (Used for certain object animations)
		global.checkpoint_x           = -1; // X position for checkpoint respawning.
	    global.checkpoint_y           = -1; // Y position for checkpoint respawning.
	    global.checkpoint_t           =  0; // Time before we hit the checkpoint.
	    global.checkpoint_r           =  0; // The current ring count before we hit the checkpoint.
	    global.character_handle       = noone;
	    //global.cpu_handle             = noone;
	    global.character_index        =  1; // The character index. (Human Player)
	    //global.cpu_index              =  0; // The character index. (CPU Player)
    
	 // Instances:
	    //instance_create(0,0, obj_drpc_controller);
	    instance_create(0, 0, ctr_audio);
    
	 // Screenshots:
	    global.screen_count           = 1;
	    scr_screen_load();




}
