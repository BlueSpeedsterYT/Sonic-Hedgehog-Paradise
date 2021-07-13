/// @description  draw_text_color_custom(x, y, text, color)
/// @param x
/// @param  y
/// @param  text
/// @param  color
function draw_text_color_custom(argument0, argument1, argument2, argument3) {

	    draw_set_color(argument3);
	    draw_text(argument0, argument1, string_hash_to_newline(argument2));
	    draw_set_color(c_white);
    



}
