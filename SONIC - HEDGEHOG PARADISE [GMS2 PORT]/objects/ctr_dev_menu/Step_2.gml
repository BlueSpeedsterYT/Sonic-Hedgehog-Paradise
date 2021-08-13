/// @description (De)Activate the Dev Menu BG
 
 // Exit if time is not running.
    if(Dev_Check == false) exit;
    
 // Pause:
    if(Dev_Pause == false && keyboard_check_pressed(vk_escape))
    {
       Dev_Pause   = true;
       Game_Snap = sprite_create_from_surface(application_surface, 0, 0, DIS_WIDTH, DIS_HEIGHT, 0, 0, DIS_WIDTH/2, DIS_HEIGHT/2);
       instance_deactivate_all(1);
       exit;
    }
    if(Dev_Pause == true && keyboard_check_pressed(vk_escape))
    {
       Dev_Pause = false;
       instance_activate_all() 
       if(Game_Snap != noone)
       {
          sprite_delete(Game_Snap);
       }
       Game_Snap = noone;            
       exit;
    }



