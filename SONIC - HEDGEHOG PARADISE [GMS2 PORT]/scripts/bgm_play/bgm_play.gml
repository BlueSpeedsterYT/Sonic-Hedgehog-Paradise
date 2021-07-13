/// @description  bgm_play(music, volume, pitch, loopBySample, loopStart, loopEnd, rate)
/// @param music
/// @param  volume
/// @param  pitch
/// @param  loopBySample
/// @param  loopStart
/// @param  loopEnd
/// @param  rate
function bgm_play(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	 /*
	    Description: Play the background music.
	    Arguments:
	    music        > The musics ID.
	    volume       > The musics volume. (1 by default)
	    pitch        > The musics pitch.  (1 by default)
	    loopBySample > Should the music using samples.
	    loopStart    > The musics loop Start (using samples)
	    loopEnd      > The musics loop end (using samples)
	    rate         > The musics sample rate, important for looping.
	 */
 
	 // Check if there's music already playing.
	    if(ctr_audio.bgm_handle != noone)
	    {
	       if(audio_is_playing(ctr_audio.bgm_handle))
	       {
	          audio_stop_sound(ctr_audio.bgm_handle);
	       }
	       ctr_audio.bgm_handle = noone;
	    }
    
	 // Set music handle and other things.
	    ctr_audio.bgm_handle       = audio_play_sound(argument0, 1, 1);
	                                 audio_sound_gain (ctr_audio.bgm_handle, argument1, 0);
	                                 audio_sound_pitch(ctr_audio.bgm_handle, argument2);
	    ctr_audio.bgm_sample_loop  = argument3;
	    ctr_audio.bgm_sample_start = argument4;
	    ctr_audio.bgm_sample_end   = argument5;
	    ctr_audio.bgm_sample_rate  = argument6;



}
