/// @description  player_collision(x, y, object)
/// @param x
/// @param  y
/// @param  object
function player_collision(argument0, argument1, argument2) {
	 // Checks if we collide with an object.
 
	 // Solid:
	    if(place_meeting(argument0, argument1, par_solid))
	    {
	       return true;
	    }
 
	 // Platform:
	    if(ground == true || platform_mode == 1)
	    {
	       if(place_meeting(argument0, argument1, par_platform))
	       {
	          if(platform_check == false)
	          {
	             if(angle == 0)
	             {
	                platform_check = true;
	                return true;
	             }
	          }
	          else
	          {
	             return true;
	          }
	       }
	    }

	 // Layers:
	    if(argument2 == 0)
	    {
	       return place_meeting(argument0, argument1, par_layer0);
	    }
	    if(argument2 == 1)
	    {
	       return place_meeting(argument0, argument1, par_layer1);
	    }




}
