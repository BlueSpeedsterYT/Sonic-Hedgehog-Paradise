/// @description  wrap_angle(value);
/// @param value
function wrap_angle(argument0) {
	 // Ensure that the angle is within the bounds.

	    while(argument0 < 0){         
	          argument0 += 360;
	    }
	    while(argument0 >= 360){
	          argument0 -= 360;
	    }
   
	 // Return the corrected angle:
	    return argument0;



}
