/// @description  draw_sprite_tiled_vertical(sprite, image, x, y, xscale, yscale, rot, blend, alpha);
/// @param sprite
/// @param  image
/// @param  x
/// @param  y
/// @param  xscale
/// @param  yscale
/// @param  rot
/// @param  blend
/// @param  alpha
function draw_sprite_tiled_vertical(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	 // Draw a sprite vertically tiled. 

	    var sprite_start, sprite_end, sprite_current, sprite_step;

	    // Retrieve sprite properties        
	       sprite_step  = sprite_get_height(argument0);
	       sprite_start = __view_get( e__VW.YView, view_current )+((argument3-__view_get( e__VW.YView, view_current )) mod sprite_step)-sprite_step;
	       sprite_end   = __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+sprite_step;
        
	       for(sprite_current = sprite_start; sprite_current <= sprite_end; sprite_current += sprite_step)
	       {
	           draw_sprite_ext(argument0, argument1, argument2, sprite_current, argument4, argument5, argument6, argument7, argument8);
	       }



}
