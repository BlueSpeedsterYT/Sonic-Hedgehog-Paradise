/// @description  Volume/Options

/*
    if(keyboard_check_pressed(global.key_down))
    {
        option++;
        if(option > optLimit)
        {
            option = 0;
        }
    };

    if(keyboard_check_pressed(global.key_up))
    {
        option--;
        if(option < 0)
        {
            option = optLimit;
        }
    };
    
    switch(option)
    {
        case 0:
        {
            optDescript = "Change the volume of the music."
        
            if(keyboard_check(global.key_right))
            {
                if(global.BGM_VOL < 1)
                {
                    global.BGM_VOL += 0.01;
                }
                else
                {
                    global.BGM_VOL = 1;
                }
            }
            
            if(keyboard_check(global.key_left))
            {
                if(global.BGM_VOL > 0)
                {
                    global.BGM_VOL -= 0.01;
                }
                else
                {
                    global.BGM_VOL = 0;
                }
            }
        break;
        }
        
        case 1:
        {
            optDescript = "Change the volume of the sound effects."
            
            if(keyboard_check(global.key_right))
            {
                if(global.SFX_VOL < 1)
                {
                    global.SFX_VOL += 0.01;
                }
                else
                {
                    global.SFX_VOL = 1;
                }
            }
            
            if(keyboard_check(global.key_left))
            {
                if(global.SFX_VOL > 0)
                {
                    global.SFX_VOL -= 0.01;
                }
                else
                {
                    global.SFX_VOL = 0;
                }
            }
        break;
        }
        
        case 2:
        {
            if(keyboard_check_pressed(global.key_a))
            {
                room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
            }
            break;
        }
        
        default:
        {
            optDescript = "";
            break;
        }
    }
    
*/
    if(keyboard_check_pressed(global.key_a))
    {
        room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
    }

/* */
/*  */
