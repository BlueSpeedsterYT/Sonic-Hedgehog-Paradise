/// @description  room_bgm_play_once(room, music, volume, pitch)
/// @param room
/// @param  music
/// @param  volume
/// @param  pitch
function room_bgm_play_once(argument0, argument1, argument2, argument3) {
	 /*
	    Description: Play the background music.
	    Arguments:
	    room         > The rooms ID.
	    music        > The musics ID.
	    volume       > The musics volume. (1 by default)
	    pitch        > The musics pitch.  (1 by default)
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
	        ctr_audio.bgm_handle       = audio_play_sound(argument1, 1, false);
	                                     audio_sound_gain (ctr_audio.bgm_handle, argument2, 0);
	                                     audio_sound_pitch(ctr_audio.bgm_handle, argument3);
	    }



}
