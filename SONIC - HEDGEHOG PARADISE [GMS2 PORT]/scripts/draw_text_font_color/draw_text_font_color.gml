/// @description  draw_text_font(font, color, x, y, string)
/// @param font
/// @param color
/// @param  x
/// @param  y
/// @param  string
function draw_text_font_color(font, color, _x, _y, _string) {

	    draw_set_font(font);
	    draw_set_color(color);
	    draw_text(_x, _y, string_hash_to_newline(_string));
	    draw_set_color(c_white);



}
