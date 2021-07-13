/// @description  Loop music using samples.

   if(bgm_sample_loop = true)
   {
      if(bgm_handle != noone)
      {
         if(audio_sound_get_track_position(bgm_handle) >= bgm_sample_end/bgm_sample_rate)
         {
            audio_sound_set_track_position(bgm_handle, bgm_sample_start/bgm_sample_rate);
            if(DEV_MODE)
            {
               log("DEBUG: BGM has reached its end point and looped. ||"+string(bgm_sample_start/bgm_sample_rate)+"|"+string(bgm_sample_end/bgm_sample_rate)+"||")
            }
         }     
      } 
   }

