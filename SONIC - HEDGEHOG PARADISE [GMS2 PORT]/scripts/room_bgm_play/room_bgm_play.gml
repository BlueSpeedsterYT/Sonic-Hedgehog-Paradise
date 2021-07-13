/// @description  room_bgm_play(room, music, volume, pitch, loopBySample, loopStart, loopEnd, rate)
/// @param room
/// @param  music
/// @param  volume
/// @param  pitch
/// @param  loopBySample
/// @param  loopStart
/// @param  loopEnd
/// @param  rate
function room_bgm_play(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	 /*
	    Description: Play the background music.
	    Arguments:
	    room         > The rooms ID.
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
	    if(room == argument0)
	    {
	        ctr_audio.bgm_handle       = audio_play_sound(argument1, 1, 1);
	                                     audio_sound_gain (ctr_audio.bgm_handle, argument2, 0);
	                                     audio_sound_pitch(ctr_audio.bgm_handle, argument3);
	        ctr_audio.bgm_sample_loop  = argument4;
	        ctr_audio.bgm_sample_start = argument5;
	        ctr_audio.bgm_sample_end   = argument6;
	        ctr_audio.bgm_sample_rate  = argument7;
	    }



}
