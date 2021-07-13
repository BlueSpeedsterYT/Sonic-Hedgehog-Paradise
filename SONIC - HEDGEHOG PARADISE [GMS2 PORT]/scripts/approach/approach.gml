/// @description  approach(start, end, step)
/// @param start
/// @param  end
/// @param  step
function approach(argument0, argument1, argument2) {
	 // Moves from start, to end at the rate of step.

	    if(argument0 < argument1)
	    {
	       return min(argument0 + argument2, argument1);
	    }
	    else
	    {
	       return max(argument0 - argument2, argument1);
	    }



}
