function draw_text_font_alpha(font, alpha, _x, _y, _string) {
/// @description  draw_text_font_alpha(font, alpha, x, y, string)
/// @param font
/// @param alpha
/// @param  x
/// @param  y
/// @param  string

	    draw_set_font(font);
		draw_set_alpha(alpha);
	    draw_text(_x, _y, string_hash_to_newline(_string));
		draw_set_alpha(1);


}


function draw_text_font_color_alpha(font, color, alpha, _x, _y, _string) {
/// @description  draw_text_font_color_alpha(font, color, x, y, string)
/// @param font
/// @param color
/// @param alpha
/// @param  x
/// @param  y
/// @param  string

	    draw_set_font(font);
	    draw_set_color(color);
		draw_set_alpha(alpha);
	    draw_text(_x, _y, string_hash_to_newline(_string));
	    draw_set_color(c_white);
		draw_set_alpha(1);



}

