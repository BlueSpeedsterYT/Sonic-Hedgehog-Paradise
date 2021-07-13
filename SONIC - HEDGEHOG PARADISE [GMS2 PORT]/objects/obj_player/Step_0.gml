/// @description  Collision Detecting and Movement.

 // Exit if not initialized or death.
    if(initialized = false || state = STATE_DEATH) exit;
    
 // Slope fix for platforms:
 /*
    It was possible to jump-through sloped platforms due to the collision check, checking if the character is actually on ground-
    This additional collision check will fix this issue by setting a flag once the character is near the platform.
 */
    if(player_collision_check(COL_SLOPE_PLATFIX, spr_player_mask_platform_checker, x, y, angle))
    {
       platform_mode = 1;
    }
    else
    {
       platform_mode = 0;
    }    

 // Set temporal sample variables:
    var _steps, _samples;
    
 // Limit the horizontal speed:
    if(x_limit)
    {
       x_speed = clamp(x_speed, -xspeed_max, x_speed_max);
    }
    
 // Set steps/samples:
    _steps = 1;
    if(x_sample > 0)
    {
       _steps += floor(abs(x_speed)/x_sample);  
    }
    _samples = x_speed/_steps;
     
 // Move horizontally:
    repeat(_steps)
    {
           x += dcos(angle)*_samples;
           y -= dsin(angle)*_samples;
           
           // Move outside terrain if stuck:
              while(_samples > 0 && (player_collision_check(COL_RIGHT, MASK_MID, x, y, angle, -1) == true))
              {
                    x -= dcos(angle);
                    y += dsin(angle);                  
              }
              while(_samples < 0 && (player_collision_check(COL_LEFT, MASK_MID, x, y, angle, -1) == true))
              {
                    x += dcos(angle);                   
                    y -= dsin(angle);
              } 
        
           // Object handling:
                         
           // Handling:
              player_handle_layers();
                    
           // Terrain/Slope movement:                         
              if(ground)
              {
                 while(player_collision_check(COL_MAIN, x, y, -1, -1, -1))
                 {
                       x -= dsin(angle);
                       y -= dcos(angle);
                 }
                 if(player_collision_check(COL_SLOPE, MASK_MID, x, y, angle, -1))
                 {
                    while (!player_collision_check(COL_MAIN, x, y, -1, -1, -1))
                    {
                              x += dsin(angle);
                              y += dcos(angle); 
                    }
                 }
              
              // Get new angles:
                 if(y_allow == true)
                 {
                    if(player_collision_check(COL_LEFT_EDGE, x, y, angle) && player_collision_check(COL_RIGHT_EDGE, x, y, angle))
                    {
                        angle = player_calculate_angle(x, y, angle);                          
                    }
                 }
              }   
        
           // Object handling:
              player_handle_rings();
              
           // Abort.
              if(x_speed == 0)
              {
                 break;
              }                  
    }
    
 // Move vertically:
    if(y_allow)
    {
    
       // Limit vertical speeds:
          if(y_limit)
          {
             y_speed = clamp(y_speed, -y_speed_max, y_speed_max);
          }
          
       // Set steps/samples:
          if(!ground)
          {
                 var _ysteps, _ysamples;
                 _ysteps = 1;
                 if(x_sample > 0)
                 {
                    _ysteps += floor(abs(y_speed)/y_sample);
                 }
                 
                 _ysamples = y_speed/_ysteps;
                 
                 repeat(_ysteps)
                 {                   
                        x += dsin(angle)*_ysamples;
                        y += dcos(angle)*_ysamples;
           
                        // Move outside terrain if stuck:
                           while(_ysamples < 0 && (player_collision_check(COL_TOP, MASK_MID, x, y, 0, -1) == true))
                           {
                                 x += dsin(angle);                                 
                                 y += dcos(angle);
                           }
                           while(_ysamples > 0 && (player_collision_check(COL_BOTTOM, MASK_MID, x, y, 0, -1) == true))
                           {
                                 x -= dsin(angle);                                
                                 y -= dcos(angle);
                           }  
              
                        // Handling:
                           player_handle_layers();     
                                                                         
                        // Check for landing:
                           if(y_speed >= 0 && player_collision_check(COL_BOTTOM, MASK_BIG, x, y, 0, -1))
                           {                           
                              // Set Calculate angles:
                                 if(player_collision_check(COL_LEFT_EDGE, x, y, 0, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, 0, -1, -1))
                                 {
                                    player_angle(player_calculate_angle(x, y, angle));
                                 }else{
                                    player_angle(0);
                                 }
                                 
                              // Check if landed on obstacles:
                                 if(player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_obstacles))
                                 {
                                    player_angle(0);
                                 }                  
                                 
                              // Change horizontal speed upon landing on flat terrain or slopes.          
                                 if(abs(x_speed) <= abs(y_speed) && angle_relative >= 22.5 && angle_relative <= 337.5)
                                 {
                                    x_speed = -y_speed*sign(dsin(angle_relative));
                                    if(angle_relative < 45 || angle_relative > 315)
                                    { 
                                       x_speed *= 0.5; 
                                    }
                                 }
                                 
                              // Set ground flag.
                                 y_speed = 0;
                                 ground  = true;
                                 
                              // Return to normal state:
                                 if(state == STATE_HURT || state == STATE_JUMP)
                                 {
                                    state = STATE_DEFAULT;
                                 }
                                 
                              // Return to normal state after flying.
                                 if(state == STATE_FLY || state == STATE_FLYDROP)
                                 {
                                    state          = STATE_DEFAULT;
                                    y_acceleration = y_accel_common;
                                 }                                 
                           }
                           
                        // Ceiling handling:
                           if((y_speed < 0 && player_collision_check(COL_TOP, MASK_LARGE, x, y, 0, -1)) && (!player_collision_check(COL_TOP_OBJECT, MASK_LARGE, x, y, angle, par_obstacles)))
                           {
                              // Set angle:
                                 player_angle(180);                                 
                              
                              // Check if it's possible to land on the ceiling.
                                 if(player_collision_check(COL_LEFT_EDGE, x, y, angle, -1, -1) && player_collision_check(COL_RIGHT_EDGE, x, y, angle, -1, -1))
                                 {
                                    // Calculate angle:
                                       player_angle(player_calculate_angle(x, y, angle));
                                       
                                    // Check if the angle isn't flat:
                                       if(angle_relative > 160 && angle_relative < 200)
                                       {
                                          player_angle(0);
                                          y_speed = 0;
                                       }
                                       
                                    // If the angle isn't flat, set new movement values:
                                       x_speed -= dsin(angle)*y_speed;
                                       ground   = true;
                                 }
                                 else
                                 {
                                    // Set angle:
                                       player_angle(0);
                                       y_speed = 0;
                                       if not(ground)
                                       {
                                          break;
                                       }
                                 }                               
                           }   
                           
                           // Do another wall Collision check to prevent any glitches:                         
                              while(player_collision_check(COL_RIGHT, MASK_MID, x, y, angle, -1))
                              {
                                    x -= dcos(angle);
                                    y += dsin(angle);
                              }    
                              while(player_collision_check(COL_LEFT, MASK_MID, x, y, angle, -1))
                              {
                                    x += dcos(angle);
                                    y -= dsin(angle);
                              }
                           
                           // Handling:
                              player_handle_rings();
                              
                           // Abort:
                              if(y_speed == 0)
                              {
                                 break; 
                              }                                                                                                                                                                                  
                 } 
          }    
            
          // Fall off the ground if the edges aren't colliding         
             if(ground && angle != 0){
                if(!player_collision_check(COL_LEFT_EDGE, x, y, angle, -1, -1) || !player_collision_check(COL_RIGHT_EDGE, x, y, angle, -1, -1)){
                   if(floor_mode == 1 || floor_mode == 3){           
                      y_speed       = -(dsin(angle_relative) * g_speed)                                
                      x_speed       =   dcos(angle_relative) * x_speed;
                      launch_lock   = 3;
                      ground        = false;              
                      shield_usable = false;               
                   }else{
                      ground  = false;
                      y_speed = -dsin(angle)*x_speed;
                      x_speed =  dcos(angle)*x_speed;                   
                   }
                }
             }                                                      
    }

 // Launch lock:
    if(launch_lock)
    {
       launch_lock -= 1;
       x_speed = 0;
    }if(launch_lock < 0) { launch_lock = 0 }
 
 // Get ground speed:
    player_gspeed();
 

/* */
/// Horizontal movement.

 // Exit if not initialized or death.
    if(initialized = false || state = STATE_DEATH) exit;

 // Input alarm. Ignores left or right input if above zero.
    if(input_alarm)
    {
       input_alarm -= 1;
    }else{
       input_alarm     = 0;
       input_alarm_dir = 0;
    }
    
    if(input_alarm && angle == 0)
    {
       input_alarm     = 0;
       input_alarm_dir = 0;
    }
    
 // Store Accel/Decel changes.
    if(ground)
    {
       x_temp_accel    = x_acceleration;
       x_temp_decel    = x_deceleration;
       x_temp_friction = x_temp_accel;
    }else{
       x_temp_accel    = x_acceleration * 2;
       x_temp_decel    = 0;
       x_temp_friction = 0;
    }
    
 // Exit if we're not allowing x movement:
    if(x_allow == false) exit;
    
 // Decelerate on slopes:
    if(state != STATE_SLIDE)
    {
       if(state = STATE_ROLL && ground)
       {
          // Rolling up a slope:
             if((angle_relative < 180 && x_speed > 0) || (angle_relative > 180 && x_speed < 0))
             {
                x_speed -= dsin(angle_relative)*roll_decel_up;
             }else{
                x_speed -= dsin(angle_relative)*roll_decel_down;
             }
       }else{
          // Decelerate normally:
             if(ground && ((angle_relative > 35 && angle_relative < 330) || round(x_speed) != 0 || input_alarm != 0))
             {
                x_speed -= dsin(angle_relative) * 0.125;
             }
       }
    }
    
 // Continue if in one of the following states.
    if((state == STATE_DEFAULT || state = STATE_WOBBLE || (state = STATE_JUMP && !jump_lock) || state == STATE_SKID || state == STATE_FLY || state == STATE_FLYDROP || state == STATE_SPRING || state == STATE_CORKSCREW || state == STATE_CORKSCREW_ROLL || state == STATE_GLIDE_DROP) && (state != STATE_GLIDE && state != STATE_SLIDE && state != STATE_CLIMB))
    {
       // Handle Accel/Decel:
          if((ground && input_alarm == 0))
          {
             if(input_left == true)
             {
                if(x_speed > 0)
                {
                   x_speed -= x_temp_decel;
                }else{
                   if(x_speed > -x_speed_top)
                   {
                      x_speed -= x_temp_accel;
                   }
                }
             }else if(input_right == true)
             {
                if(x_speed < 0)
                {
                   x_speed += x_temp_decel;
                }else{
                   if(x_speed < x_speed_top)
                   {
                      x_speed += x_temp_accel;
                   }
                }                
             }else{
                x_speed -= min(abs(x_speed), x_temp_friction)*sign(x_speed);
             }
          }else{
             // Air Cap:
                if(y_speed > 16)
                {
                   y_speed = 16;
                }
                
             // Air acceleration:
                if(input_right)
                {
                   if(state == STATE_FLY || state == STATE_FLYDROP || state == STATE_GLIDE_DROP)
                   {
                      if(x_speed < 0)
                      {
                         x_speed += x_temp_accel;
                      }
                      else if(x_speed < x_speed_top)
                      {
                              x_speed += x_air_accel;
                      }                      
                   }
                   else
                   {
                      x_speed += x_air_accel;
                   }
                }
                
                if(input_left)
                {
                   if(state == STATE_FLY || state == STATE_FLYDROP || state == STATE_GLIDE_DROP)
                   {
                      if(x_speed > 0)
                      {
                         x_speed -= x_temp_accel;
                      }
                      else if(x_speed > -x_speed_top)
                      {
                              x_speed -= x_air_accel;
                      }                      
                   }
                   else
                   {
                      x_speed -= x_air_accel;
                   }
                }
          }
    }
   
 // Fall if there's not enough speed:
    if(angle_relative > 45 && angle_relative < 315 && ground == true && abs(x_speed) < 2.5 && tunnel_lock = 0)
    {
       if(angle_relative >= 90 && angle_relative <= 270)
       {
          y_speed = -dsin(angle_relative)*x_speed;
          x_speed =  dcos(angle_relative)*x_speed;
          ground  = false;
       }else{
          input_alarm = 40;
          if(input_alarm_dir == 0)
          {
             input_alarm_dir = AnimationDirection;
          }
       }
    }
     
 // Get new angle:
    if(ground && player_collision_check(COL_LEFT_EDGE, x, y, angle) && player_collision_check(COL_RIGHT_EDGE, x, y, angle))
    {
       player_angle(player_calculate_angle(x, y, angle));
    }else{
       player_angle(0);
    }
   
 // Full stop when colliding with a wall.
    if((x_speed > 0 && player_collision_check(COL_RIGHT, MASK_BIG, x, y, angle)) || (x_speed < 0 && player_collision_check(COL_LEFT, MASK_BIG, x, y, angle))){
        x_speed = 0;
    }


/* */
/// Vertical movement.

 // Exit if not initialized or death.
    if(initialized = false || state = STATE_DEATH) exit;
    
 // Exit if we're not allowing x movement:
    if(y_allow == false) exit;
            
 //  Return to a normal state:
     if(ground)
     {
        y_speed = 0;
        if(state = STATE_JUMP || state = STATE_HURT || state == STATE_SPRING)
        {
           if(state = STATE_HURT)
           {
              x_speed = 0;
           }
           state = STATE_DEFAULT;
        }
        
        // Check if the player is really grounded:
           if(player_collision_check(COL_BOTTOM, MASK_BIG, x, y, angle) == false)
           {
              ground = false;
              player_angle(0);
           }
     }
     
 // Otherwise, add gravity:
    if(!ground)
    {
           // Gravity:           
              if(state != STATE_CORKSCREW && state != STATE_CORKSCREW_ROLL)
              {
                 y_speed += y_acceleration;
              }
              
           // Check if we landed:
              if(y_speed >= 0 && player_collision_check(COL_BOTTOM, MASK_BIG, x, y, angle) == true)
              {
                 // We grounded:
                    ground = true;
                    
                 // Return to normal state:
                    if(state = STATE_JUMP || state == STATE_FLY || state == STATE_FLYDROP || state = STATE_HURT)
                    {
                       if(state = STATE_HURT)
                       {
                          x_speed = 0;
                       }
                       state = STATE_DEFAULT;
                    }
              }
              
           // Check if we're in the air but collide with a ceiling.
              if(y_speed < 0 && player_collision_check(COL_TOP, MASK_BIG, x, y, angle) == true)
              {
                 y_speed = 0;
                 if(state = STATE_DEFAULT && x_speed == 0 && y_speed == 0)
                 { 
                    state = STATE_ROLL;
                 }
              }
    }
     
 // Reset horizontal speed after getting hurt.
    if(y_speed >= 0 && player_collision_check(COL_BOTTOM, MASK_MAIN, x, y, angle) == true)
    {
       if(state == STATE_HURT)
       {
          x_speed = 0;
          state   = STATE_DEFAULT;
       }
    }


/* */
/// Air drag. (NOPE)

 // Exit if not initialized or death.
    if(initialized = false || state = STATE_DEATH) exit;
    
 // Air Drag (NOPE):
 /*
    if(ground == false && state != STATE_HURT)
    {
       if(y_speed < 0 && y_speed >= -4)
       {
          x_speed -= ((x_speed / 0.125) / 256);
       }
    }
    


/* */
/*  */
