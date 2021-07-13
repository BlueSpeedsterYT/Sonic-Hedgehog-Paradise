/// @description  player_state_homing()
function player_state_homing() {
	 // Sonic's Homing State (FGX Ver.)
 
	 if(ground == false && (state == STATE_JUMP || state == STATE_DEFAULT))
	 {
	    if(hom_use == true && input_a_pressed)
	    {
	    // Change the state.
	       state    = STATE_HOMING;
	       hom_use  = false;
	    }
	 }
 
	 if(state == STATE_HOMING)
	 {
	    x_speed += 6*AnimationDirection
	    y_speed  = 0;
	    state    = STATE_JUMP;
	 }
 
	 if(ground)
	 {
	    hom_use  = true;
	 }



}
