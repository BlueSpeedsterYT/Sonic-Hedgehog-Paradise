/// @description  audio_play(id, volume, unmute);
/// @param id
/// @param  volume
/// @param  unmute
function audio_play(argument0, argument1) {
	 // Play a sound effect.

	       sndID = audio_play_sound(argument0, 0, 0)
	               audio_sound_gain(sndID, argument1, 0);
	               return sndID;
 



}
