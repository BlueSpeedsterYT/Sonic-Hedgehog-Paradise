/// @description Options

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
    
    switch(optPage)
    {
        case 0:
        {
            switch(option)
            {
                case 0:
                {
                    optDescript = "Begin the Demo!";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 1;
                        option = 0;
                        optLimit = 5;
                    }
                    break;
                }
                
                case 1:
                {
                    optDescript = "Change some Game settings";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 2;
                        option = 0;
                        optLimit = 2;
                        //room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"),rm_options);
                    }
                    break;
                }
                
                case 2:
                {
                    optDescript = "Exit the Game";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        room_fade_to("SLICE_BLACK", rm_game_end);
                    }
                    break;
                }
                
                default:
                {
                    optDescript = "";
                    break;
                }
            }
            break;
        }
        
        case 1:
        {
            switch(option)
            {
                case 0:
                {
                    optDescript = "Select a Difficulty!";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        global.gameDifficult = DIF_VERY_EASY;
                        room_fade_to("REGULAR_BLACK", global.firstRoom);
                    }
                    break;
                }
                
                case 1:
                {
                    optDescript = "Select a Difficulty!";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        global.gameDifficult = DIF_EASY;
                        room_fade_to("REGULAR_BLACK", global.firstRoom);
                    }
                    break;
                }
                
                case 2:
                {
                    optDescript = "Select a Difficulty!";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        global.gameDifficult = DIF_NORMAL;
                        room_fade_to("REGULAR_BLACK", global.firstRoom);
					}
                    break;
                }
                
                case 3:
                {
                    optDescript = "Select a Difficulty!";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        global.gameDifficult = DIF_HARD;
                        room_fade_to("REGULAR_BLACK", global.firstRoom);
                    }
                    break;
                }
                
                case 4:
                {
                    optDescript = "Select a Difficulty!";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        global.gameDifficult = DIF_VERY_HARD;
                        room_fade_to("REGULAR_BLACK", global.firstRoom);
                    }
                    break;
                }
                
                case 5:
                {
                    optDescript = "Back to the menu";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 0;
                        option = 0;
                        optLimit = 2;
                    }
                    break;
                }
            
            }
            break;
        }
        
        case 2:
        {
            switch(option)
            {
                case 0:
                {
                    optDescript = "Change the Volume.";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 3;
                        option = 0;
                        optLimit = 2;
                        //room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
                    }
                    break;
                }
                
                case 1:
                {
                    optDescript = "Change the style of the HUD";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 4;
                        option = 0;
                        optLimit = 1;
                        //room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
                    }
                    break;
                }
                
                case 2:
                {
                    optDescript = "Back to the menu";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 0;
                        option = 1;
                        //room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
                    }
                    break;
                }
                
                default:
                {
                    optDescript = "";
                    break;
                }
            }
            break;
        }
        
        case 3:
        {
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
                    optDescript = "Back to the menu";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 2;
                        option = 0;
                        //room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
                    }
                    break;
                }
            }
            break;
        }
        
        case 4:
        {
            switch(option)
            {
                case 0:
                {
                    optDescript = "Change the HUD style."
                    
                    switch(global.HUDStyle)
                    {
                        case 0:
                        {
                            optText = "Top Center";
                            break;
                        }
                        
                        case 1:
                        {
                            optText = "Top Right";
                            break;
                        }
                        
                        case 2:
                        {
                            optText = "Top Left";
                            break;
                        }
                        
                        case 3:
                        {
                            optText = "Bottom Left";
                            break;
                        }
                        
                        case 4:
                        {
                            optText = "Bottom Right";
                            break;
                        }
                        
                        case 5:
                        {
                            optText = "Bottom Center";
                            break;
                        }
                    }
                
                    if(keyboard_check_pressed(global.key_right))
                    {
                        global.HUDStyle++
                        if(global.HUDStyle > hudStyleLimit)
                        {
                            global.HUDStyle = 0;
                        }
                    }
                    
                    if(keyboard_check_pressed(global.key_left))
                    {
                        global.HUDStyle--
                        if(global.HUDStyle < 0)
                        {
                            global.HUDStyle = hudStyleLimit;
                        }
                    }
                    
                    //HUD_TYPE = hudStyles;
                    
                    break;
                }
                
                case 1:
                {
                    optDescript = "Back to the menu";
                    if(keyboard_check_pressed(global.key_a))
                    {
                        optPage = 2;
                        option = 1;
						optLimit = 2;
                        //room_fade_to(choose("REGULAR_BLACK", "REGULAR_WHITE", "SLICE_BLACK", "SLICE_WHITE"), rm_menu)
                    }
                    break;
                }
            }
            break;
        }
    }

