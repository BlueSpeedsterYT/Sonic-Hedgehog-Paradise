/// @description  Stuff


/// Keep within Boundaries

    if(x <= (camera_object.cam_limit_left+sprite_get_width(MASK_MAIN)/2) && x_speed < 0.0)
    {
       x_speed   = 0;
       x         = (camera_object.cam_limit_left+sprite_get_width(MASK_MAIN)/2);
       if(ground)
       {
          AnimationIndex = "IDLE";
       }
    }
    else
    if(x >= (camera_object.cam_limit_right-sprite_get_width(MASK_MAIN)/2) && x_speed > 0.0)
    {
       x_speed   = 0;
       x         = (camera_object.cam_limit_right-sprite_get_width(MASK_MAIN)/2);
       if(ground)
       {
          AnimationIndex = "IDLE";
       }
    }
	
/// Trigger animation / Modify animation variables.
 // Here we change which animation should play at any time.
 
  // Idle
	 if(ground)
	 {
		if(state == STATE_DEFAULT && x_speed == 0 && (AnimationIndex != "STOMP_LAND") && AnimationIndex != "CROUCH_END")
		{
			apply_anim("IDLE")
		}
		
	// Running
		if(state == STATE_DEFAULT && x_speed <> 0)
		{
			if(abs(x_speed) < 3)
			{
				apply_anim("WALK")
			}
			if(abs(x_speed) >= 3 && abs(x_speed) < 6)
			{
				apply_anim("JOG")
			}
			if(abs(x_speed) >= 6 && abs(x_speed) < 8)
			{
				anim_apply("FAST_JOG")
			}
			if(abs(x_speed) >= 8 && abs(x_speed) < 11)
			{
				anim_apply("SLOW_RUN")
			}
			if(abs(x_speed) >= 11)
			{
				anim_apply("FAST_RUN")
			}
		}
	 }
 
 // Crouching:
	if(state == STATE_CROUCH)
	{
		apply_anim("CROUCH")
	}
 // Jumping / Rolling:
    if(state == STATE_JUMP)
    {
       apply_anim("JUMP")
    }
    if(state == STATE_ROLL)
    {
       apply_anim("ROLL")
    }
    if(hom_use == false)
    {
       apply_anim("ROLL")
    }
	if(state == STATE_SPINDASH)
	{
		anim_apply("SPINDASH")
	}
	if(state == STATE_STOMP)
	{
		apply_anim("STOMP")
	}
	if(state == STATE_STOMP_LAND)
	{
		apply_anim("STOMP_LAND")
	}

/// Animation system.
 // Plays and updates the animation state of the character.
 
       if(AnimationIndex != "") // Check if there's a animation to play.
       {
          // Check if we changed our animation and (re)start playback:
             if(AnimationIndex != AnimationPrevious)
             {
                AnimationPrevious = AnimationIndex;
                AnimationFlag     = "START";
                AnimationFrame    = AnimationStart;
             }
             
          // Start the playback of the animation:
             if(AnimationFlag == "START")
             {
                define_anim();
                AnimationFlag = "PLAY";
             }

          // Play the animation:
             if(AnimationFlag == "PLAY")
             {
                // Animate:
                   AnimationFrame += AnimationSpeed;
                
                // Check if the animation has ended:                   
                   if(floor(AnimationFrame) > AnimationEnd)
                   { 
                      // See if the animation loops indefinitely:
                         if(AnimationLoop != -1)
                         {
                            // Revert back to starting frame:
                               if(AnimationLoopTimer == -1)
                               {
                                  AnimationFrame = AnimationLoop;
                               }
                               else // Repeat the animation a certain amount of times.
                               {
                                    if(AnimationLoopTimer > 1)
                                    {
                                       AnimationLoopTimer -= 1;
                                       AnimationFrame       = AnimationLoop;
                                    }
                                    else // End playback.
                                    {
                                       AnimationFrame = AnimationEnd;                            
                                       AnimationFlag  = "END";                                    
                                    }
                               }
                         } 
                         else // End playback.
                         {
                            AnimationFrame = AnimationEnd;    
                            AnimationFlag  = "END";                     
                         }
                   }
             }
             // End animation playback / Switch to animation:
             if(AnimationFlag == "END")
             {
                if(AnimationNext != "")
                {
                   AnimationFlag  = "PLAY";                  
                   AnimationIndex = AnimationNext; 
                   AnimationFrame = AnimationNextFrame;                                                    
                   define_anim();                                                  
                }
             }
       }    
   


/// Animation Directions
// Set animation directions:
 
    if(state != STATE_SPINDASH && state != STATE_LOOKUP && state != STATE_CROUCH
    && state != STATE_ROLL     && state != STATE_SKID   && state != STATE_JUMP
    && state != STATE_CLIMB    && state != STATE_HURT && grab_moving == 0)
    {
       // Change direction depending on input and speed:
          if(input_left  && x_speed <= 0) { AnimationDirection = -1}
          if(input_right && x_speed >= 0) { AnimationDirection =  1}
    }

 // Rolling direction:
    if(state == STATE_ROLL)
    {
       // Change direction depending on input and speed:    
          //if(x_speed > 0 && ground)      { tails_tail_direction =  1 }
          //if(x_speed < 0 && ground)      { tails_tail_direction = -1 }          
          if(x_speed > 0 && input_right) { AnimationDirection  =  1 }
          if(x_speed < 0 && input_left)  { AnimationDirection  = -1 }         
    }

 // Jumping direction:
    if(state == STATE_JUMP && !jump_lock || state == STATE_SPRING)
    {
      // Change direction depending on input:
         if(input_right) { AnimationDirection =  1 } 
         if(input_left)  { AnimationDirection = -1 }
         if(input_left && input_right)
         {
            AnimationDirection = AnimationDirection;
         }
    }

  // Change direction in the air:
     if(!ground && state = STATE_DEFAULT){
     
      // Change direction depending on input:
         if(input_right) { AnimationDirection =  1 }  
         if(input_left)  { AnimationDirection = -1 }       
                  
     }    

/// States
if(player_index == (CHAR_SONIC || CHAR_SHAD))
{
    if(ALLOW_HOMING == true)
        player_state_homing()
        
    if(ALLOW_W_JUMP == true)
        player_state_double_jump()
        
    player_state_stomp()
}

player_state_jump()
player_state_lookup()
player_state_crouch()
player_state_roll()
player_state_spindash()

if(DEV_MODE)
{
    if (keyboard_check_pressed(ord("A")))
    {
        AnimationDirection = -1;
        x_speed -= x_speed_max;
    }
    if (keyboard_check_pressed(ord("D")))
    {
        AnimationDirection =  1;
        x_speed += x_speed_max
    }
}

