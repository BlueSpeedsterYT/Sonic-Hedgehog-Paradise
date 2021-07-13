/// @description  draw_background_tiled_vertical_part(background, left, top, width, height, x, y, sep, sprite/bg)
/// @param background
/// @param  left
/// @param  top
/// @param  width
/// @param  height
/// @param  x
/// @param  y
/// @param  sep
/// @param  sprite/bg
function draw_background_tiled_vertical_part() {
	 // Draw a part of a background, horizontally tiled.
 
	    var BackgroundStart, BackgroundEnd, BackgroundStep;
 
	    // Retrieve background properties 
	    BackgroundStep  = argument[4]+argument[7];
	    BackgroundStart = __view_get( e__VW.YView, view_current )+((argument[6]-__view_get( e__VW.YView, view_current )) mod BackgroundStep)-BackgroundStep;
	    BackgroundEnd   = __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+BackgroundStep;
    
	    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
	        draw_background_part(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], BackgroundStart);   
	        BackgroundStart += BackgroundStep;
	    }



}
