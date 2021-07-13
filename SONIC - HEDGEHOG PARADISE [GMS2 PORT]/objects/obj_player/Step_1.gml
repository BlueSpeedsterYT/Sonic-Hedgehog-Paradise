/// @description  Receive inputs.

 // Exit if not initialized or death.
    if(initialized = false || state = STATE_DEATH) exit;
  
 // Reenable the inputs.
	if(input_lock == false)
	{
  
	 // Key held.   
	    input_up               = keyboard_check(global.key_up);
	    input_down             = keyboard_check(global.key_down);
	    input_right            = keyboard_check(global.key_right);
	    input_left             = keyboard_check(global.key_left);
	    input_a                = keyboard_check(global.key_a);
	    input_b                = keyboard_check(global.key_b);
	    input_x                = keyboard_check(global.key_x);
	    input_y                = keyboard_check(global.key_y);
    
	 // Key press.
	    input_up_pressed       = keyboard_check_pressed(global.key_up);
	    input_down_pressed     = keyboard_check_pressed(global.key_down);
	    input_right_pressed    = keyboard_check_pressed(global.key_right);
	    input_left_pressed     = keyboard_check_pressed(global.key_left);
	    input_a_pressed        = keyboard_check_pressed(global.key_a);
	    input_b_pressed        = keyboard_check_pressed(global.key_b);    
	    input_x_pressed        = keyboard_check_pressed(global.key_x);
	    input_y_pressed        = keyboard_check_pressed(global.key_y);    

	 // Key release.    
	    input_up_released      = keyboard_check_released(global.key_up);
	    input_down_released    = keyboard_check_released(global.key_down);
	    input_right_released   = keyboard_check_released(global.key_right);
	    input_left_released    = keyboard_check_released(global.key_left);
	    input_a_released       = keyboard_check_released(global.key_a);
	    input_b_released       = keyboard_check_released(global.key_b);    
	    input_x_released       = keyboard_check_released(global.key_x);
	    input_y_released       = keyboard_check_released(global.key_y);    

	 // Disable input if both left and right is being held.
	    if(input_left && input_right)
	    {
	       input_left  = false;
	       input_right = false;
	    }
    
	 // Input alarm.
	    if(input_alarm)
	    {
	       if(input_alarm_dir == 1)
	       {
	          input_right = false;
	       }
	       if(input_alarm_dir == -1)
	       {
	          input_left = false;
	       }
	    }
    
	 // Input locks (spring)
	    if(input_lock_l)
	    {
	       input_left = false;
	    }
	    if(input_lock_r)
	    {
	       input_right = false;
	    }

	}

/// Physics

 // Previous Positions:
    previous_x = x;
    previous_y = y;
    
player_physics()

