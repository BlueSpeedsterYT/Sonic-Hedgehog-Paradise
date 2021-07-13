//if global.character_index == CHAR_SONIC
//{
    var time_string = string(floor(global.checkpoint_t/60000))+":"+string_place_number(floor(global.checkpoint_t/1000) mod 60, 2, 0)+":"+string_place_number(floor(global.checkpoint_t/ 10) mod 100, 2, 0)
    
    draw_sprite_ext(spr_checkpoint_bar,0,DIS_WIDTH/2,DIS_HEIGHT/2,DIS_ZOOM,scale_y_bar,0,c_white,__alpha)
    draw_sprite_ext(spr_checkpoint_background,0,DIS_WIDTH/2,DIS_HEIGHT/2,scale_x/9,scale_y*(DIS_ZOOM+1),0,c_white,__alpha)
    
    {
        draw_set_font(global.font_default)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_colour(c_white)
        draw_set_alpha(__alpha)
        draw_text(DIS_WIDTH/2, (DIS_HEIGHT/2)+(sprite_get_height(spr_checkpoint_background)/2), string_hash_to_newline(time_string))
    }
    draw_set_halign(-1)
    draw_set_valign(-1)
    draw_set_alpha(1)
//}
//else if global.character_index == CHAR_SHAD
//{
    
//    draw_sprite_ext(spr_checkpoint_background,1,view_xview[0] + 162, view_yview[0] + 60,1,1,0,c_white,image_alpha)
//    draw_sprite_number(view_xview[0] + 192, view_yview[0] + 100, time_string, spr_hud_numbers_shadow,image_alpha)
//}

