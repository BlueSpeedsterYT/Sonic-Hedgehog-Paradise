/// @description  Activate.

    if(activated = false && finished = false && state = 1)
    {
       if(global.checkpoint_x != x && global.checkpoint_y != y)
       {
          activated = true;
          state = 2;
          //aud_play_sound(general_checkpoint, global.sfx_volume, 1, 0, 0);
          instance_create(x,y,obj_checkpoint_info)
          global.checkpoint_x = x;
          global.checkpoint_y = y-5;
          global.checkpoint_t = global.game_time;
          
          if(global.gameDifficult == DIF_VERY_EASY)
            global.checkpoint_r = global.playRings;
       }
       else
       {
          finished        = true;
          state = 3;
          global.game_time = global.checkpoint_t;
          
          if(global.gameDifficult == DIF_VERY_EASY)
            global.playRings = global.checkpoint_r;
       }
       
    }
    

