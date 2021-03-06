/// @description  draw_background_tiled_horizontal_part(background, left, top, width, height, x, y, sep, sprite/bg)
/// @param background
/// @param  left
/// @param  top
/// @param  width
/// @param  height
/// @param  x
/// @param  y
/// @param  sep
/// @param  sprite/bg
function draw_background_tiled_horizontal_part() {
	 // Draw a part of a background, horizontally tiled.
 
	    var BackgroundStart, BackgroundEnd, BackgroundStep;
    
	    // Retrieve background properties        
	    BackgroundStep  = argument[3]+argument[7];
	    BackgroundStart = __view_get( e__VW.XView, view_current )+((argument[5]-__view_get( e__VW.XView, view_current )) mod BackgroundStep)-BackgroundStep;
	    BackgroundEnd   = __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+BackgroundStep;
        
	    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
	        if(background_exists(argument[0]))
	        {
	           draw_background_part(argument[0], argument[1], argument[2], argument[3], argument[4], BackgroundStart, argument[6]);           
	        }
	        else
	        {
	           draw_sprite_part(argument[0], parallax_speed[argument[8]], argument[1], argument[2], argument[3], argument[4], BackgroundStart, argument[6]);      
	        }
	        BackgroundStart += BackgroundStep;
	    }



}
