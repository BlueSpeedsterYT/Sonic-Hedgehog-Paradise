/// @description  room_fade_start(fade type)
/// @param fade type
function room_fade_start(argument0) {

	    var fade_type = argument0;
    
	    switch(fade_type)
	    {
	        case "REGULAR_BLACK":
	        {
	            instance_create(0,0,obj_fade_in)
	            break;
	        }
        
	        case "REGULAR_WHITE":
	        {
	            instance_create(0,0,obj_fade_in_white)
	            break;
	        }
        
	        case "SLICE_BLACK":
	        {
	            instance_create(0,0,obj_fade_in_slice)
	            break;
	        }
        
	        case "SLICE_WHITE":
	        {
	            instance_create(0,0,obj_fade_in_slice_white)
	            break;
	        }
	    }



}
