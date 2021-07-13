/// @description  fade_create(fade type)
/// @param fade type
function fade_create(argument0) {

	    var fade_type = argument0;
    
	    switch(fade_type)
	    {
	        case "SNAPSHOT":
	        {
	            instance_create(x, y, obj_fade_snapshot);
	            break;
	        }
        
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
