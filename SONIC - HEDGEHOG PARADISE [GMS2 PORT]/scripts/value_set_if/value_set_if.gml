/// @description  value_set_if(base variable, value 1, value 2, variable, is)
/// @param base variable
/// @param  value 1
/// @param  value 2
/// @param  variable
/// @param  is
function value_set_if(argument0, argument1, argument2, argument3, argument4) {
	 // Changes a value depending on a variable.
 
	    if(argument3 == argument4)
	    {
	       if(argument0 != argument2)
	       {
	          return argument2;
	       }
	    } 
	    else
	    {
	       if(argument0 != argument1)
	       {
	          return argument1;
	       }
	    }



}
