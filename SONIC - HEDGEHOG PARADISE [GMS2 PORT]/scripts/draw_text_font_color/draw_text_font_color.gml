/// @description  draw_text_font_color(font, x, y, string)
/// @param font
/// @param  x
/// @param  y
/// @param  string
function draw_text_font_color(argument0, argument1, argument2, argument3, argument4) {

	    draw_set_font(argument0);
	    draw_set_color(argument1);
	    draw_text(argument2, argument3, string_hash_to_newline(argument4));
	    draw_set_color(c_white);



}
