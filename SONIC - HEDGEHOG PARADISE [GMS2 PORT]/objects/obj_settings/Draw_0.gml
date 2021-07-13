/// @description  Draw the options

    draw_rectangle_color_new(c_black, __view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+176, __view_get( e__VW.YView, 0 )+ID_HEIGHT, false);
    draw_set_font(font);
    draw_set_align(fa_center, fa_top);
    
    draw_text_color_custom(__view_get( e__VW.XView, 0 )+88, __view_get( e__VW.YView, 0 )+8, "There is nothing to see here...#Go back to the main menu instead.#Most of the old Options object have been#moved to the main menu object.", c_white);
    //draw_text_color_selected(view_xview[0]+88, view_yview[0]+24,           "BGM Volume: " + string(floor(global.BGM_VOL*100)) + "%", (option==0), c_white, c_gray);
    //draw_text_color_selected(view_xview[0]+88, view_yview[0]+32,           "SFX Volume: " + string(floor(global.SFX_VOL*100)) + "%", (option==1), c_white, c_gray);
    //draw_text_color_selected(view_xview[0]+88, view_yview[0]+ID_HEIGHT-64, "Back", (option==2), c_white, c_gray);
    
    //draw_rectangle_color_new(c_dkgray, view_xview[0], view_yview[0]+ID_HEIGHT-32, view_xview[0]+ID_WIDTH, view_yview[0]+ID_HEIGHT-16, false);
    //draw_text_color_custom(view_xview[0]+(ID_WIDTH/2), view_yview[0]+ID_HEIGHT-32+(string_height(optDescript)/2), optDescript, c_white);
    draw_set_align(-1, -1);

