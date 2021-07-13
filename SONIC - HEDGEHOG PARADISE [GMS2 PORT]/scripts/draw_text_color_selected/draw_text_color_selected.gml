/// @description  draw_text_color_selected(x, y, text, if, then color, else color)
/// @param x
/// @param  y
/// @param  text
/// @param  if
/// @param  then color
/// @param  else color
function draw_text_color_selected(argument0, argument1, argument2, argument3, argument4, argument5) {

	    if(argument3)
	    {
	       draw_set_color(argument4);
	       draw_text(argument0, argument1, string_hash_to_newline(argument2));
	       draw_set_color(c_white);
	    }
	    else
	    {
	       draw_set_color(argument5);
	       draw_text(argument0, argument1, string_hash_to_newline(argument2));
	       draw_set_color(c_white);
	    }
    



}
