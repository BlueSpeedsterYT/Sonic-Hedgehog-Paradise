/// @description Title Card Movement

 // Timing
 if(boxTimer < boxTimerLimit)
	boxTimer++

 // Scaling
	if(boxTimer >= 30)
	{
		if(boxYScale != 0.20)
		{
			boxYScale = max(0.20, boxYScale-0.10)
		}
		
		zoneX = min(DIS_WIDTH/2, zoneX+32);
		actX = min((DIS_WIDTH/2)+(string_width(string(zoneText))/2), actX+32);
		
		if(BarX != 0)
		{
			BarX = min(0, BarX+64);
		}
		else
		{
			if(BarX > 0)
			{
				BarX = 0;
			}
		}
		//boxYScale = lerp_approach(boxYScale, 1, 0.1, 0.25)
	}
	
	if(boxTimer >= 180)
	{
		GameNameAlpha -= 0.20;
		
		 if(zoneX != zoneX2)
			 zoneX += 32;
 
		if(actX != actX2)
			 actX += 32;
 
		 if(boxYScale > 0)
			boxYScale -= 0.10;
 
		 if(BarX != BarX2)
			BarX -= 64;
		
		obj_player.input_lock = false;
		global.add_time = true;
		
		//boxYScale = lerp_approach(boxYScale, 0, 0.1, 0.25)
	}
	
	if(boxTimer == boxTimerLimit)
	{
		instance_destroy();
	}