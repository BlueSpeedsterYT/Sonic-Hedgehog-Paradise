/// @description Title Card Movement

 // Timing
 if(boxTimer < boxTimerLimit)
	boxTimer++

 // Scaling
	if(boxTimer == 10)
	{
		boxYScale = lerp_approach(boxYScale, 180, 0.2, 0.4)
	}
	
	if(boxTimer == 490)
	{
		boxYScale = lerp_approach(boxYScale, 0, 0.2, 0.4)
	}
	
	if(boxTimer == 590)
	{
		obj_player.input_lock = false;
	}
	
	if(boxTimer == boxTimerLimit)
	{
		instance_destroy()
	}