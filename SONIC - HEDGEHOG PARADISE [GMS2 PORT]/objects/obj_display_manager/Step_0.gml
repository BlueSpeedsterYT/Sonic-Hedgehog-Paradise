/*
if keyboard_check_pressed(vk_f3)
{
    zoom += 1;
    if(zoom > max_zoom)
        zoom = max_zoom;
    window_set_size(ideal_width*zoom,ideal_height*zoom);
    surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
    alarm[0] = 1;
}
zoom = max_zoom;
window_set_size(ideal_width*zoom,ideal_height*zoom);
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
alarm[0] = 1;
*/

if (os_browser == browser_not_a_browser)
{
    if (DEV_MODE == true)
    {
        if keyboard_check_pressed(vk_f1)
        {
            game_restart();
        }
        
        if keyboard_check_pressed(vk_f2)
        {
            room_fade_restart("REGULAR_BLACK");
        }
        
        if keyboard_check_pressed(vk_f3)
        {
            if(global.checkpoint_x != -1 && global.checkpoint_y != -1)
            {
                global.checkpoint_x = -1;
                global.checkpoint_y = -1;
                global.checkpoint_t =  0;
                global.checkpoint_r =  0;
                room_fade_restart("REGULAR_BLACK");
            }
        }
    }
    
    if keyboard_check_pressed(vk_f4)
    {
        if(fullscreen_check != true)
        {
            fullscreen_check = true;
        }
        else
        {
            fullscreen_check = false;
        }
        
        if(fullscreen_check != true)
        {
            if (window_get_fullscreen() == true)
            {
                window_set_fullscreen(false);
            }
            window_set_size(display_width,display_height);
            alarm[0] = 1;
        }
        else
        {
            window_set_fullscreen(true);
            window_set_size(display_width,display_height);
            alarm[0] = 1;
        }
    }
    
    if(keyboard_check_pressed(ord("G")))
    {
        if(debug_gui_check == true)
        {
            debug_gui_check = false;
        }
        else if(debug_gui_check == false)
        {
            debug_gui_check = true;
        }
    }
}
else
{
    if (DEV_MODE == true)
    {
        if keyboard_check_pressed(vk_f5)
        {
            game_restart();
        }
        
        if keyboard_check_pressed(vk_f6)
        {
            room_fade_restart("REGULAR_BLACK");
        }
        
        if keyboard_check_pressed(vk_f7)
        {
            if(global.checkpoint_x != -1 && global.checkpoint_y != -1)
            {
                global.checkpoint_x = -1;
                global.checkpoint_y = -1;
                global.checkpoint_t =  0;
                global.checkpoint_r =  0;
                room_fade_restart("REGULAR_BLACK");
            }
        }
    }
    
    if keyboard_check_pressed(vk_f8)
    {
        if(fullscreen_check != true)
        {
            fullscreen_check = true;
        }
        else
        {
            fullscreen_check = false;
        }
        
        if(fullscreen_check != true)
        {
            if (window_get_fullscreen() == true)
            {
                window_set_fullscreen(false);
            }
            window_set_size(display_width,display_height);
            alarm[0] = 1;
        }
        else
        {
            window_set_fullscreen(true);
            window_set_size(display_width,display_height);
            alarm[0] = 1;
        }
    }
    
    if(keyboard_check_pressed(ord("G")))
    {
        if(debug_gui_check == true)
        {
            debug_gui_check = false;
        }
        else if(debug_gui_check == false)
        {
            debug_gui_check = true;
        }
    }
}

//if (os_browser == browser_not_a_browser) && keyboard_check_pressed(vk_f9)
//{
    //create_location(SCREENSHOT_FOLDER)
    //quick_screenshot(SCREENSHOT_FOLDER, "Sonic_HedgePara_Capture_"+string(global.screen_count), "PNG");
    //global.screen_count++;
    //scr_screen_saves();
    
    //audio_play_sound(snd_snapshot,1,false);
    
    //fade_create("SNAPSHOT");
//}

//if(DEV_MODE && keyboard_check_pressed(vk_f10))
//{
//	if(ideal_width == 640 && display_width == 1280)
//	{
//		ideal_width = 480;
//		ideal_height = 336;
//		display_width = 960;
//		display_height = 672;
//		__view_set(e__VW.WView, 0, 480)
//		__view_set(e__VW.WPort, 0, 480)
//		__view_set(e__VW.HView, 0, 336)
//		__view_set(e__VW.HPort, 0, 336)
//		__view_set(e__VW.HBorder, 0, 240)
//		__view_set(e__VW.VBorder, 0, 168)
//		display_set_gui_size(display_width,display_height);
//		surface_resize(application_surface,display_width,display_height);
//		window_set_size(display_width,display_height);
//		alarm[0]=1;
//	}
	
//	else if(ideal_width == 480 && display_width == 960)
//	{
//		ideal_width = 640;
//		ideal_height = 360;
//		display_width = 1280;
//		display_height = 720;
//		__view_set(e__VW.WView, 0, 640)
//		__view_set(e__VW.WPort, 0, 640)
//		__view_set(e__VW.HView, 0, 360)
//		__view_set(e__VW.HPort, 0, 360)
//		__view_set(e__VW.HBorder, 0, 320)
//		__view_set(e__VW.VBorder, 0, 160)
//		display_set_gui_size(display_width,display_height);
//		surface_resize(application_surface,display_width,display_height);
//		window_set_size(display_width,display_height);
//		alarm[0]=1;
//	}
//}

if (os_browser == browser_not_a_browser) && keyboard_check(vk_escape)
    game_end()

/* */
/*  */
