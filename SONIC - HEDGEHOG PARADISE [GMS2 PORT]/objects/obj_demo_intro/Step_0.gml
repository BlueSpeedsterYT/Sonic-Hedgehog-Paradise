/// @description  Alpha code.

    demo_text_timer += 1;
    
    if(demo_text_timer > 70)
    {
        if(demo_text_alpha < 1){
            demo_text_alpha += 0.1
        }
    }
    else if(demo_text_timer > 630)
    {
        if(demo_text_alpha > 0){
            demo_text_alpha -= 0.1
        }
    }

/// Basic Step Event Code.

    if(showcase_check == true)
    {
        demo_text = "The following Showcase Demo is based off of the game's current state#in development, and as such, certain#content shown may not be final compared#to the complete build of the#full release, please understand that, but I hope you will enjoy#the current build of the game in action!#-BlueSpeedster";
    
        if(demo_text_timer > 700)
        {
            room_fade_to("REGULAR_BLACK", rm_splash);
        }
    };
    
    if(sage_check == true)
    {
        demo_text = "The following SAGE Demo is based off of the game's current state#in development, and as such, certain#content shown may not be final compared#to the complete build of the#full release, please understand that, but I hope you will enjoy#the current build of the game in action!#-BlueSpeedster##-PRESS ENTER TO CONTINUE-";
        
        if(keyboard_check_pressed(global.key_enter))
        {
            //with(instance_create(x, y, obj_fade_to))
            //{
            //    value = rm_sage_intro;
            //}
            
            room_fade_to("REGULAR_BLACK", rm_sage_intro);
        }
    };
    
    if((showcase_check == false && sage_check == false) || (showcase_check == true && sage_check == true))
    {
        //if(DEV_MODE == false)
        //{
            //room_goto(rm_title);
        //}
        //else
        //{
            //room_goto(global.firstRoom);
            //room_goto(rm_menu);
            room_fade_to("REGULAR_BLACK", rm_splash);
        //}
    };

