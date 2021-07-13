/// @description  Check if there's music already playing.

    if(bgm_handle != noone)
    {
       if(audio_is_playing(bgm_handle))
       {
          audio_stop_sound(bgm_handle);
       }
       bgm_handle = noone;
    }

