/// @description  dummy_effect_create(sprite, image speed, x, y, depth, looptimes)
/// @param sprite
/// @param  image speed
/// @param  x
/// @param  y
/// @param  depth
/// @param  looptimes
function dummy_effect_create(argument0, argument1, argument2, argument3, argument4, argument5) {
	 // Creates a dummy effect.
 
	    var dummyFX;
	    dummyFX = instance_create(argument2, argument3, obj_dummy_effect)
	    dummyFX . sprite_index = argument0;
	    dummyFX . image_speed  = argument1;
	    dummyFX . depth        = argument4;
	    dummyFX . loop_times   = argument5;




}
