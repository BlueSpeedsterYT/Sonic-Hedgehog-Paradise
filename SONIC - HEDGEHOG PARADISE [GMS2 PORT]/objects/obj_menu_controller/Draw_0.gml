/// @description  Draw the Menu

    draw_sprite_ext(spr_black_dot, 0, __view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 ), 160, ID_HEIGHT, 0, c_black, 1);
    draw_set_font(font);
    draw_set_align(fa_center, fa_top);
    switch(optPage)
    {
        case 0:
        {
            draw_text_color_custom(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+8, "MAIN MENU", c_white);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+24,           "Start Demo", (option==0), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+32,           "Options", (option==1), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+ID_HEIGHT-64, "Exit Game", (option==2), c_white, c_gray);
            break;
        }
        
        case 1:
        {
            draw_text_color_custom(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+8, "DIFFICULTY SELECT", c_white);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+24,           "Beginner", (option==0), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+32,           "Easy", (option==1), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+40,           "Standard", (option==2), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+48,           "Hard", (option==3), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+56,           "Expert", (option==4), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+ID_HEIGHT-64, "Back to Menu", (option==5), c_white, c_gray);
            break;
        }
        
        case 2:
        {
            draw_text_color_custom(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+8, "OPTIONS", c_white);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+24,           "Audio", (option==0), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+32,           "HUD Styles", (option==1), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+ID_HEIGHT-64, "Back", (option==2), c_white, c_gray);
            break;
        }
        
        case 3:
        {
            draw_text_color_custom(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+8, "AUDIO SETTINGS", c_white);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+24,           "BGM Volume: " + string(floor(global.BGM_VOL*100)) + "%", (option==0), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+32,           "SFX Volume: " + string(floor(global.SFX_VOL*100)) + "%", (option==1), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+ID_HEIGHT-64, "Back", (option==2), c_white, c_gray);
            break;
        }
        
        case 4:
        {
            draw_text_color_custom(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+8, "HUD SETTINGS", c_white);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+24,           "Styles: " + optText, (option==0), c_white, c_gray);
            draw_text_color_selected(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+32,           "Back", (option==1), c_white, c_gray);
            break;
        }
    }
    draw_sprite_ext(spr_namebar, 0, __view_get( e__VW.XView, 0 )-7, __view_get( e__VW.YView, 0 )+ID_HEIGHT-36, 2, 1, 0, c_white, 1);
    draw_text_color_custom(__view_get( e__VW.XView, 0 )+96, __view_get( e__VW.YView, 0 )+ID_HEIGHT-36+(string_height(string_hash_to_newline(optDescript))/2), optDescript, c_white);
    draw_set_align(-1, -1);

