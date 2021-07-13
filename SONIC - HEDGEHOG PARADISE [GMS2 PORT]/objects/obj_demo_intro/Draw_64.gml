/// @description  Draw the text.

    draw_set_align(fa_center, fa_middle);
    
    //draw_background(bg_demo_intro, 0, 0);
    draw_set_alpha(demo_text_alpha);
    draw_set_font(global.font_default);
	draw_set_color(c_white);
    draw_text(DIS_WIDTH/2, DIS_HEIGHT/2, string_hash_to_newline(demo_text))

