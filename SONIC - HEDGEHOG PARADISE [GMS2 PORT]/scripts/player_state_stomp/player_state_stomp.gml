/// @description  player_state_stomp()
function player_state_stomp() {
	 // Sonic's Stomp State
 
	 if(ground == false && (state == STATE_JUMP || state == STATE_DEFAULT))
	 {
	    if(input_b_pressed)
	    {
	    // Change the state.
	       state    = STATE_STOMP;
	    }
	 }
 
	 if(state == STATE_STOMP)
	 {
	    x_speed  = 0;
	    y_speed  = y_speed_max;
    
	    if(ground)
	    {
	       
		   if(state == STATE_STOMP)
		   {
			   state = STATE_STOMP_LAND;
		   }
		}
		
	 }
		
	 if(state == STATE_STOMP_LAND)
	 {
	 	input_lock = true;
	 			
	 	if(AnimationFrame == 2)
	 	{
	 		state    = STATE_DEFAULT;
	 		input_lock = false;
	 	}
	 }
	 
 



}
