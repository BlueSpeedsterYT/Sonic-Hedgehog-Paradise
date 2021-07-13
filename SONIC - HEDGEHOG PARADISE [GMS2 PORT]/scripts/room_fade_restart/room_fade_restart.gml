/// @description  room_fade_restart(fade type)
/// @param fade type
function room_fade_restart(argument0) {

	    var fade_type = argument0;
    
	    switch(fade_type)
	    {
	        case "REGULAR_BLACK":
	        {
	            with(instance_create(0,0,obj_fade_to))
	            {
	                value = room;
	            }
	            break;
	        }
        
	        case "REGULAR_WHITE":
	        {
	            with(instance_create(0,0,obj_fade_to_white))
	            {
	                value = room;
	            }
	            break;
	        }
        
	        case "SLICE_BLACK":
	        {
	            with(instance_create(0,0,obj_fade_to_slice))
	            {
	                value = room;
	            }
	            break;
	        }
        
	        case "SLICE_WHITE":
	        {
	            with(instance_create(0,0,obj_fade_to_slice_white))
	            {
	                value = room;
	            }
	            break;
	        }
	    }



}
