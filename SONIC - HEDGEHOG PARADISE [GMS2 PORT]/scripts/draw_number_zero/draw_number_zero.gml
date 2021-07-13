/// @description  draw_number_zero(x, y, number, length);
/// @param x
/// @param  y
/// @param  number
/// @param  length
function draw_number_zero(argument0, argument1, argument2, argument3) {

	    var number_string, zero_string;
	        number_string = string(argument2);
	        zero_string   = "";
        
	        for(i=0; i<(argument3-string_length(number_string)); i+=1)
	        {
	            zero_string = zero_string + "0";
	        }
        
	        draw_text(argument0, argument1, string_hash_to_newline(zero_string+number_string));



}
