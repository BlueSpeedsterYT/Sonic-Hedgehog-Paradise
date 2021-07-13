/// @description  room_fade_to(fade_type, room)
/// @param fade_type
/// @param  room
function room_fade_to(argument0, argument1) {

	    var fade_type = argument0;
    
	    switch(fade_type)
	    {
	        case "REGULAR_BLACK":
	        {
	            with(instance_create(0,0,obj_fade_to))
	            {
	                value = argument1;
	            }
	            break;
	        }
        
	        case "REGULAR_WHITE":
	        {
	            with(instance_create(0,0,obj_fade_to_white))
	            {
	                value = argument1;
	            }
	            break;
	        }
        
	        case "SLICE_BLACK":
	        {
	            with(instance_create(0,0,obj_fade_to_slice))
	            {
	                value = argument1;
	            }
	            break;
	        }
        
	        case "SLICE_WHITE":
	        {
	            with(instance_create(0,0,obj_fade_to_slice_white))
	            {
	                value = argument1;
	            }
	            break;
	        }
	    }



}
