/// @description  bgm_stop()
function bgm_stop() {
	 /*
	    Description: Stop the background music.
	    Arguments:
	    music > The musics ID.
	 */
 
	 // Check if there's music already playing.
	    if(ctr_audio.bgm_handle != noone)
	    {
	       if(audio_is_playing(ctr_audio.bgm_handle))
	       {
	          audio_stop_sound(ctr_audio.bgm_handle);
	       }
	       ctr_audio.bgm_handle       = noone;
	       ctr_audio.bgm_sample_loop  = false;
	       ctr_audio.bgm_sample_start = 0;
	       ctr_audio.bgm_sample_end   = 0;
	       ctr_audio.bgm_sample_rate  = 0;       
	    }
    



}
