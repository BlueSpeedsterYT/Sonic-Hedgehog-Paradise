/// @description charact_write_specs(charater enum)
/// @param charater enum
function charact_write_specs() {
	enum character{_x, _y, speed_x, speed_y, player_rings, checkpoint_x, checkpoint_y, checkpoint_t, checkpoint_r, action};
	var str="";
	switch(argument[0])
	{
	  case character._x:
	    str="X: "+string(obj_player.x);
	  break;
	  case character._y:
	    str="Y: "+string(obj_player.y);
	  break;
	  case character.speed_x:
	    str="X Speed: "+string(obj_player.x_speed);
	  break;
	  case character.speed_y:
	    str="Y Speed: "+string(obj_player.y_speed);
	  break;
	  case character.player_rings:
	    str="Rings: "+string(global.playRings);
	  break;
	  case character.checkpoint_x:
	    str="Checkpoint X: "+string(global.checkpoint_x);
	  break;
	  case character.checkpoint_y:
	    str="Checkpoint Y: "+string(global.checkpoint_y);
	  break;
	  case character.checkpoint_t:
	    str="Checkpoint Time: "+string(floor(global.checkpoint_t/60000))+":"+string_place_number(floor(global.checkpoint_t/1000) mod 60, 2, 0)+":"+string_place_number(floor(global.checkpoint_t/ 10) mod 100, 2, 0)
	  break;
	  case character.checkpoint_r:
	    str="Checkpoint Rings: "+string(global.checkpoint_r);
	  break;
	  case character.action:
	    str="Character Action: "+string(obj_player.state);
	  break;
	}
	return str;



}
