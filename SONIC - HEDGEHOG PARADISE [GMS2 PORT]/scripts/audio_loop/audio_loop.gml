/// @description  audio_loop(id, volume);
/// @param id
/// @param  volume
function audio_loop(argument0, argument1) {
	 // Play a sound effect.

	       sndID = audio_play_sound(argument0, 0, 1)
	               audio_sound_gain(sndID, argument1, 0);
	               return sndID;
               



}
