/// @description  player_state_double_jump()
function player_state_double_jump() {
	 // Double Jump
 
	 if(!ground &&(state == STATE_JUMP || state == STATE_DEFAULT))
	 {
	    if(w_jump_use == true && input_action_pressed)
	    {
	        state      = STATE_W_JUMP;
	        w_jump_use = false; 
	    }
	 }
 
	 if(state == STATE_W_JUMP)
	 {
	    jump_completed = true;
	    y_speed        = -5.5;
	    jump_lock      = false; 
	    state          = STATE_JUMP;
	 }
 
	 if(ground)
	 {
	    w_jump_use = true; 
	 }



}
