/// @description  quick_screenshot_timer(timer)
/// @param timer
function quick_screenshot_timer(argument0) {

	    if(screenshot == 1)
	    {
	        timer = argument0/room_speed;
	    }
    
	    if(timer == argument0/room_speed)
	    {
	        timer -= (argument0/2)/room_speed;
	    };
    
	    if(timer == 0)
	    {
	        screenshot = 0;
	    }



}
