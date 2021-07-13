/// @description  draw_background_tiled_part(background, left, top, width, height, x, y, x sep, y sep, sprite/bg)
/// @param background
/// @param  left
/// @param  top
/// @param  width
/// @param  height
/// @param  x
/// @param  y
/// @param  x sep
/// @param  y sep
/// @param  sprite/bg
function draw_background_tiled_part() {
	 // Draw a part of a background, horizontally tiled.

	    var BackgroundXStart, BackgroundXEnd, BackgroundXCurrent, BackgroundXStep;
	    var BackgroundYStart, BackgroundYEnd, BackgroundYCurrent, BackgroundYStep;
 
	    // Retrieve background properties        
	    BackgroundXStep  = argument[3]+argument[7];
	    BackgroundXStart = __view_get( e__VW.XView, view_current )+((argument[5]-__view_get( e__VW.XView, view_current )) mod BackgroundXStep)-BackgroundXStep;
	    BackgroundXEnd   = __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+BackgroundXStep;
	    BackgroundYStep  = argument[4]+argument[8];
	    BackgroundYStart = __view_get( e__VW.YView, view_current )+((argument[6]-__view_get( e__VW.YView, view_current )) mod BackgroundYStep)-BackgroundYStep;
	    BackgroundYEnd   = __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+BackgroundYStep;
        
	    for (BackgroundYCurrent = BackgroundYStart; BackgroundYCurrent <= BackgroundYEnd; BackgroundYCurrent += BackgroundYStep)
	     for (BackgroundXCurrent = BackgroundXStart; BackgroundXCurrent <= BackgroundXEnd; BackgroundXCurrent += BackgroundXStep)
	         draw_background_part(argument[0], argument[1], argument[2], argument[3], argument[4], BackgroundXCurrent, BackgroundYCurrent);



}
