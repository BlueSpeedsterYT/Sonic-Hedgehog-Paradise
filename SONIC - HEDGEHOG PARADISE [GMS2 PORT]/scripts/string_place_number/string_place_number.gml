/// @description  string_place_number(string, places, number)
/// @param string
/// @param  places
/// @param  number
function string_place_number(argument0, argument1, argument2) {
	 // Places a Number in places.
  
	    var _string, _place;
	    _string = string(argument0);
	    _place  = argument1-string_length(_string);
        
	    while(_place)
	    {
	          _string  = string(argument2) + _string;
	          _place  -= 1;
	    }

	    return _string;




}
