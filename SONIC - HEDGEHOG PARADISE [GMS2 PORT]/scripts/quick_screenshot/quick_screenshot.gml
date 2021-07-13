/// @description  quick_screenshot(location, image_name, image_type)
/// @param location
/// @param  image_name
/// @param  image_type
function quick_screenshot(argument0, argument1, argument2) {

	    var location, img_name, img_type, file_format;
	    location = argument0;
	    img_name = argument1;
	    img_type = argument2;
    
	    switch(img_type)
	    {
	        case "PNG":
	        {
	            file_format = ".png"
	            break;
	        }
        
	        case "JPG":
	        {
	            file_format = ".jpg"
	            break;
	        }
	    }
	    screen_save(location+img_name+file_format);



}
